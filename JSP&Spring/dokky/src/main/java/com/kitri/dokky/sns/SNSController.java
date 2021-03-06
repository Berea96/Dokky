package com.kitri.dokky.sns;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.MissingAuthorizationException;
import org.springframework.social.connect.Connection;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.User;
import org.springframework.social.facebook.api.UserOperations;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;
import org.springframework.social.google.api.Google;
import org.springframework.social.google.api.impl.GoogleTemplate;
import org.springframework.social.google.api.plus.Person;
import org.springframework.social.google.api.plus.PlusOperations;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kitri.dokky.member.Member;
import com.kitri.dokky.member.MemberService;

@Controller
@RequestMapping("/main")
public class SNSController {

	// 페이스북 oAuth 관련
	@Autowired
	private FacebookConnectionFactory connectionFactory;
	@Autowired
	private OAuth2Parameters oAuth2Parameters;
	
	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;
	
	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;
	
	private OAuth2Operations oauthOperations;
	
	@Resource(name="memberService")
	private MemberService service;
	
	@RequestMapping("/login")
	public String goLogin(HttpSession session) {

		oauthOperations = connectionFactory.getOAuthOperations();
		String facebook_url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, oAuth2Parameters);
		oauthOperations = googleConnectionFactory.getOAuthOperations();
		
		String google_url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);
		session.setAttribute("google_url", google_url);
		session.setAttribute("facebook_url", facebook_url);
		
		if(session.getAttribute("facebookProfile") != null ||
		   session.getAttribute("googleProfile") != null) {
			return "redirect:/member/home";
		}
		
		return "main/main";
	}
	
	@RequestMapping("/facebookLogin")
    public String facebookCallback(@RequestParam String code, 
    		HttpSession session) throws Exception {
 
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
            }
            
            Connection<Facebook> connection = connectionFactory.createConnection(accessGrant);
            Facebook facebook = connection == null ? new FacebookTemplate(accessToken) : connection.getApi();
            UserOperations userOperations = facebook.userOperations();
            
            try {
                String [] fields = { "id", "email",  "name"};
                User profile = facebook.fetchObject("me", User.class, fields);
                System.out.println("유저이메일 : " + profile.getEmail());
                System.out.println("유저 id : " + profile.getId());
                System.out.println("유저 name : " + profile.getName());
                
                Member getFacebookMember = service.getMember(profile.getId());
                
                if(getFacebookMember == null) {
                	Member facebookMember = new Member();
                    facebookMember.setMem_id(profile.getId());
                    facebookMember.setMem_name(profile.getName());
                    facebookMember.setMem_email(profile.getEmail());
                    facebookMember.setMem_image("http://graph.facebook.com/" + profile.getId() + "/picture?width=250&height=250");
                    facebookMember.setMem_type("facebook");
                    
                    service.joinMember(facebookMember);
                    
                    facebookMember = service.getMember(facebookMember.getMem_id());
                    
                    loginSession(session, facebookMember);
                }
                else {
                	loginSession(session, getFacebookMember);
                }
                
            } catch (MissingAuthorizationException e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/member/home";
    }
	
	@RequestMapping("/googleLogin")
	public String googleCallback(@RequestParam String code, 
			HttpSession session) throws IOException {
		
		oauthOperations = googleConnectionFactory.getOAuthOperations();
        AccessGrant accessGrant = oauthOperations.exchangeForAccess(code, googleOAuth2Parameters.getRedirectUri(),
                null);
        
        String accessToken = accessGrant.getAccessToken();
        Long expireTime = accessGrant.getExpireTime();
 
        if (expireTime != null && expireTime < System.currentTimeMillis()) {
            accessToken = accessGrant.getRefreshToken();
            System.out.printf("accessToken is expired. refresh token = {}", accessToken);
        }
 
        Connection<Google> connection = googleConnectionFactory.createConnection(accessGrant);
        Google google = connection == null ? new GoogleTemplate(accessToken) : connection.getApi();
        System.out.println(connection);
 
        PlusOperations plusOperations = google.plusOperations();
        Person profile = plusOperations.getGoogleProfile();
        System.out.println("User Uid : " + profile.getId());
        System.out.println("User Name : " + profile.getDisplayName());
        System.out.println("User Email : " + profile.getAccountEmail());
        System.out.println("User Profile : " + profile.getImageUrl());
        
        Member getGoogleMember = service.getMember(profile.getId());
        
        if(getGoogleMember == null) {
        	Member googleMember = new Member();
        	googleMember.setMem_id(profile.getId());
        	googleMember.setMem_name(profile.getDisplayName());
        	googleMember.setMem_email(profile.getAccountEmail());
        	googleMember.setMem_image(profile.getImageUrl());
        	googleMember.setMem_type("google");
        	
        	service.joinMember(googleMember);
        	
        	googleMember = service.getMember(googleMember.getMem_id());
        	
        	loginSession(session, googleMember);
        }
        else {
        	loginSession(session, getGoogleMember);
        }
        
        // Access Token 취소
        try {
            System.out.println("Closing Token....");
            String revokeUrl = "https://accounts.google.com/o/oauth2/revoke?token=" + accessToken + "";
            URL url = new URL(revokeUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setDoOutput(true);
 
            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
		return "redirect:/member/home";
	}
	
	//loginInfo session set Attribute
	public void loginSession(HttpSession session, Member loginInfo) {
		session.setAttribute("loginInfo", loginInfo);
	}
}
