package org.kpu.yunweb.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.kpu.yunweb.domain.UserVO;
import org.kpu.yunweb.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller //Component-Scan 기능을 통해 urlController를 빈으로 등록
public class urlController {
	private static final Logger logger = LoggerFactory.getLogger(urlController.class);
	RedirectAttributes redirect = null;
	
	@Autowired
    private MemberService memberService;

		//홈 페이지
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String home(Locale locale, Model model) {
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			String formattedDate = dateFormat.format(date);
			
			model.addAttribute("serverTime", formattedDate );
			return "home";
		}
	
		// http://localhost:8080/yunweb/main
		@RequestMapping(value={"/index"}, method = RequestMethod.POST)
		public String getUserGet(@RequestParam("id") String id) {
	
			logger.info(" /index URL GET method called. then getUserGet method executed.");
			return "index";
		}
		
		// http://localhost:8080/yunweb/login
		@RequestMapping(value={"/login"}, method = RequestMethod.GET)
		public String getUserGet1() {

			logger.info(" /login URL GET method called. then getUserGet1 method executed.");
			return "login";
		}
		
		// http://localhost:8080/yunweb/logout
		@RequestMapping(value={"/logout"}, method = RequestMethod.POST)
		public String getUserGet5() {

			logger.info(" /logout URL POST method called. then getUserGet5 method executed.");
			return "redirect:/";
		}
		
		// 로그인 체크 ..
		@RequestMapping(value={"/login"}, method = RequestMethod.POST)
		public String checkLogin(@RequestParam("id") String id, @RequestParam("passwd") String passwd) throws Exception {
			
			if(memberService.checkMember(id, passwd)) {
				logger.info(" /login URL POST method called. then checkLogin method executed.");
				return "index";
			} else {
				logger.info(" /login URL POST method call failed. then checkLogin method executed.");
				return "redirect:login";
			}
		}
		
		// http://localhost:8080/yunweb/join
		@RequestMapping(value={"/join"}, method = RequestMethod.GET)
		public String getUserGet2() {
			
			logger.info(" /join URL GET method called. then getUserGet2 method executed.");
			return "join";
		}
		
		// 회원가입 ..
		@RequestMapping(value = {"/join"}, method = RequestMethod.POST)
		public String createMember( @ModelAttribute("user") UserVO vo) throws Exception {
			memberService.addMember(vo);
			
			logger.info(vo.toString());
			logger.info(" /join URL POST method called. then createMember method executed.");
			return "index";
		}
		
		// http://localhost:8080/yunweb/book/list
		@RequestMapping(value={"/book/list"}, method = RequestMethod.GET)
		public String getUserGet3() {
								
			logger.info(" /book/list URL GET method called. then getUserGet3 method executed.");
			return "book/book_list";
		}
		
		
		// http://localhost:8080/yunweb/news/list
		@RequestMapping(value={"/news/list"}, method = RequestMethod.GET)
		public String getUserGet4() {
				
			logger.info(" /news/list URL GET method called. then getUserGet4 method executed.");
			return "news/news_list";
		}

}
