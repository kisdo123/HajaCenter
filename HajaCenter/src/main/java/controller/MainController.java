package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Article.DTO.Article;
import Article.service.ArticleService;
import User.DTO.User;
import User.service.UserService;

@Controller
public class MainController {

	@Autowired
	private UserService userService;

	@Autowired
	private ArticleService articleService;

	// 메인화면으로 보냄
	@RequestMapping("/main.do")
	public String main(Model model) {
		System.out.println("진입");
		List<Article> articles = articleService.viewlistlimit10();
		model.addAttribute("articles", articles);
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
		return "success/success";
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
			User user = userService.login(id, pw);
			request.getSession().setAttribute("User", user);
		} catch (Exception e) {
			return "fail/fail";
		}
		return "redirect:/main.do";
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

	// 마이페이지 폼요청
	@RequestMapping("/pagemyForm.do")
	public String updateForm(HttpServletRequest request, Model model) {
		// 세선에서 User 객체에서 userId를 가져옴
		User loginUser = (User) request.getSession().getAttribute("User");
		int userId = loginUser.getUserId();

		// userId로 select 실행
		User user = userService.updateInput(userId);

		// phone 하이픈 제거후 저장
		String getphone = user.getPhone();
		String phone = getphone.replaceAll("-", "");
		user.setPhone(phone);

		model.addAttribute("user", user);
		return "pagemy";
	}

	// 회원정보 수정
	@RequestMapping("/modify.do")
	public String Update(HttpServletRequest request, @ModelAttribute User user) {
		// 세선으로부터 userId와 id 이름을 가져와 셋팅 나머지는 입력받음
		User loginUser = (User) request.getSession().getAttribute("User");
		int userId = loginUser.getUserId();
		String id = loginUser.getId();
		String name = loginUser.getName();
		user.setUserId(userId);
		user.setId(id);
		user.setName(name);
		try {
			userService.update(user);
		} catch (Exception e) {
			return "fail/fail";
		}
		return "success/success";
	}

	// 글쓰기 진행
	@RequestMapping("/writeArticle.do")
	public String writeArticle(HttpServletRequest request, @ModelAttribute Article article) {
		User user = (User) request.getSession().getAttribute("User");
		int userId = user.getUserId();
		article.setUserId(userId);
		try {
			articleService.write(article);
			return "success/success";
		} catch (Exception e) {
			return "fail/fail";
		}
	}

	// 글쓰기 폼을 요청
	@RequestMapping("/writeArticleForm.do")
	public String writeArticleForm(Model model) {
		return "writeArticle";
	}

	// 전체 목록보기
	@RequestMapping("/menu3.do")
	public String ProductList(Model model) {
		List<Article> articles = articleService.viewlist();
		model.addAttribute("articles", articles);
		return "menu3";
	}
		
}
