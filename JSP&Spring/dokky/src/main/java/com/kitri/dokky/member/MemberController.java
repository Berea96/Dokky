package com.kitri.dokky.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Resource(name="memberService")
	private MemberService service;

	@RequestMapping("/home")
	public String goHome() {
		return "main/home";
	}
	@RequestMapping("/gologin")
	public String goLogin() {
		return "member/login";
	}
	
	//회원 가입
	@ResponseBody
	@RequestMapping("/join")
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
	@RequestMapping("/login")
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
		return "redirect:/member/home";
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
	
	//로그아웃, 회원 탈퇴시 세션 비워주는 기능
	public void sessionInvalidate(HttpServletRequest req) {
		
		HttpSession session = req.getSession(false);
		
		if(session != null) {
			session.removeAttribute("loginInfo");
			session.invalidate();
		}
	}
}
