package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import User.DTO.User;
import User.service.UserService;
import exception.UserException;

@Controller
public class MainController {

	@Autowired
	private UserService userService;

	// 메인화면으로 보냄
	@RequestMapping("/main.do")
	public String main() {
		return "main";
	}

	// menu1 보냄
	@RequestMapping("/menu1.do")
	public String menu1() {
		return "menu1";
	}

	// menu4 보냄
	@RequestMapping("/menu4.do")
	public String menu4() {
		return "menu4";
	}

	// 회원가입을 진행
	@RequestMapping("/join.do")
	public String joinUser(@ModelAttribute User user) {
		userService.joinUser(user);
		return "success/joinSuccess";
	}

	// 회원가입 폼을 요청
	@RequestMapping("/joinForm.do")
	public String joinForm(Model model) {
		return "pagejoin";
	}

	// 로그인 진행
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, @RequestParam("id") String id, @RequestParam("pw") String pw) {
		try {
			User user = userService.Login(id, pw);
			request.getSession().setAttribute("User", user);
		} catch (RuntimeException e) {
			throw new UserException("로그인 실패");
		}
		return "main";
	}

	// 로그인 폼을 요청
	@RequestMapping("/loginForm.do")
	public String loginForm(Model model) {
		return "pagelogin";
	}

	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request) {
		request.getSession().setAttribute("User", null);
		return "redirect:/loginForm.do";
	}

}
