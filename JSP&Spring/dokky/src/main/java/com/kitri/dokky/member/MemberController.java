package com.kitri.dokky.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.MissingAuthorizationException;
import org.springframework.social.connect.Connection;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.User;
import org.springframework.social.facebook.api.UserOperations;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Resource(name="memberService")
	private MemberService service;
	
	// 페이스북 oAuth 관련
    @Autowired
    private FacebookConnectionFactory connectionFactory;
    @Autowired
    private OAuth2Parameters oAuth2Parameters;

	@RequestMapping("/home")
	public String goHome() {
		return "main/home";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String goLogin() {
		return "member/login";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String goJoin(Model model) {
		
		OAuth2Operations oauthOperations = connectionFactory.getOAuthOperations();
		String facebook_url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, oAuth2Parameters);
		
		model.addAttribute("facebook_url", facebook_url);
		
		return "member/join";
	}
	
	//회원 가입
	@ResponseBody
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinMember(Member member) {

		service.joinMember(member);

		Member joinMemberData = service.getMember(member.getMem_id());

		String result = joinMemberData == null ? 
				"{'result':'fail'}" : "{'result':'success'}";

		return result;
	}

	//중복 확인
	@ResponseBody
	@RequestMapping("/checkId")
	public String checkId(@RequestParam("mem_id")String mem_id) {

		Member checkMemberData = service.getMember(mem_id);

		String result = checkMemberData == null ? 
				"{'result':'none'}" : "{'result':'exist'}";

		return result;
	}
	
	//로그인
	//@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginMember(@RequestParam("mem_id")String mem_id,
							  @RequestParam("mem_pw")String mem_pw,
							  HttpServletRequest req) {
		
		Member loginMemberData = service.getMember(mem_id);
		
		String result = "";
		
		if(loginMemberData == null) {
			result = "{'result':'fail'}";
		}
		else {
			HttpSession session = req.getSession();
			session.setAttribute("loginInfo", loginMemberData);
			result = "{'result':'success'}";
		}
		
		//return result;
		return result;
	}
	
	//회원 정보
	@RequestMapping("/getMemberInfo")
	public String getMemberInfo(@RequestParam("mem_id")String mem_id,
							   Model model) {
		
		Member getMemberInfoData = service.getMember(mem_id);
		
		model.addAttribute("memberInfo", getMemberInfoData);
		
		return "member/info";
	}
	
	//정보 수정
	//@ResponseBody
	@RequestMapping("/editMember")
	public String editMember(Member member) {
		
		service.editMember(member);
		
		Member editMemberData = service.getMember(member.getMem_id());
		
		String result = 
				editMemberData.getMem_nickname().equals(member.getMem_nickname()) ?
				"{'result':'sucess'}" : "{'result':'fail'}";
		
		return result;
	}
	
	//회원 탈퇴
	@RequestMapping("/deleteMember") 
	public String deleteMember(@RequestParam("mem_id")String mem_id,
							   HttpServletRequest req) {
		
		service.deleteMember(mem_id);
		
		Member deleteMemberData = service.getMember(mem_id);
		
		String result = "";
		
		if(deleteMemberData == null) {
			result = "error/error";
		}
		else {
			sessionInvalidate(req);
			
			result = "redirect:/main/home";
		}
		
		return result;
	}
	
	//로그아웃
	//@ResponseBody
	@RequestMapping("/logoutMember")
	public String logoutMember(HttpServletRequest req) {
		
		sessionInvalidate(req);
		
		return "redirect:/member/home";
	}
	
	@RequestMapping(value = "/facebookSignInCallback", method = { RequestMethod.GET, RequestMethod.POST })
    public String facebookSignInCallback(@RequestParam String code, Model model) throws Exception {
 
        try {
             String redirectUri = oAuth2Parameters.getRedirectUri();
            System.out.println("Redirect URI : " + redirectUri);
            System.out.println("Code : " + code);
 
            OAuth2Operations oauthOperations = connectionFactory.getOAuthOperations();
            AccessGrant accessGrant = oauthOperations.exchangeForAccess(code, redirectUri, null);
            String accessToken = accessGrant.getAccessToken();
            System.out.println("AccessToken: " + accessToken);
            Long expireTime = accessGrant.getExpireTime();
        
            
            if (expireTime != null && expireTime < System.currentTimeMillis()) {
                accessToken = accessGrant.getRefreshToken();
            };
            
        
            Connection<Facebook> connection = connectionFactory.createConnection(accessGrant);
            Facebook facebook = connection == null ? new FacebookTemplate(accessToken) : connection.getApi();
            UserOperations userOperations = facebook.userOperations();
            
            try
 
            {            
                String [] fields = { "id", "email",  "name"};
                User userProfile = facebook.fetchObject("me", User.class, fields);
                model.addAttribute("userProfile", userProfile);
                System.out.println("유저이메일 : " + userProfile.getEmail());
                System.out.println("유저 id : " + userProfile.getId());
                System.out.println("유저 name : " + userProfile.getName());
                
            } catch (MissingAuthorizationException e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "member/join";
    }

	
	//로그아웃, 회원 탈퇴시 세션 비워주는 기능
	public void sessionInvalidate(HttpServletRequest req) {
		
		HttpSession session = req.getSession(false);
		
		if(session != null) {
			session.removeAttribute("loginInfo");
			session.invalidate();
		}
	}
}
