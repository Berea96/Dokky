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

//회원에 대한 컨트롤러
@Controller
@RequestMapping("/member")
public class MemberController {

	//의존성주입
	@Resource(name="memberService")
	private MemberService service;

	//메인 페이지로 이동
	@RequestMapping("/main")
	public String goMain() {
		return "main/main";
	}

	//홈 메인으로 이동 
	@RequestMapping("/home")
	public String goHome(HttpSession session) {

		if(session.getAttribute("facebookProfile") == null &&
		   session.getAttribute("googleProfile") == null && 
		   session.getAttribute("loginInfo") == null) {
			return "redirect:/main/login";
		}

		return "main/home";
	}

	//로그인 페이지로 이동(삭제)
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String goLogin() {
		return "member/login";
	}

	//가입 페이지로 이동(삭제)
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String goJoin(Model model) {

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
	@ResponseBody
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

		return result;
	}

	//회원 정보
	@RequestMapping("/getMemberInfo")
	public String getMemberInfo(@RequestParam("mem_id")String mem_id,
			Model model) {

		Member getMemberInfoData = service.getMember(mem_id);

		model.addAttribute("memberInfo", getMemberInfoData);

		return "member/profile";
	}

	//정보 수정
	//@ResponseBody
	@RequestMapping("/editMember")
	public String editMember(Member member) {

		service.editMember(member);

		Member editMemberData = service.getMember(member.getMem_id());

		String result = 
				editMemberData.getMem_name().equals(member.getMem_name()) ?
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

		return "redirect:/main/login";
	}

	//로그아웃, 회원 탈퇴시 세션 비워주는 기능
	public void sessionInvalidate(HttpServletRequest req) {

		HttpSession session = req.getSession(false);

		if(session != null) {
			session.removeAttribute("loginInfo");
			session.removeAttribute("facebookProfile");
			session.removeAttribute("googleProfile");
			session.invalidate();
		}
	}
}
