package org.kpu.yunweb.controller;

import java.util.List;

import org.kpu.yunweb.domain.ReviewVO;
import org.kpu.yunweb.service.MemberService;
import org.kpu.yunweb.service.ReviewService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/review")
public class ReviewController {
	
private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	private ReviewService reviewService;
	
	// 리뷰 첫 페이지 띄우기
	@RequestMapping(value = {"/list"}, method = RequestMethod.GET)
    public String listReview(Model model) throws Exception {
    	List<ReviewVO> reviews = reviewService.readReviewList();
    	
		logger.info(" /review/list URL called. then listReview method executed.");
        model.addAttribute("reviews", reviews);
        return "review/review_list";
    }
	
	// 리뷰 읽는 페이지 띄우기
	@RequestMapping(value = "/read", method = RequestMethod.GET)
    public String readReview(@RequestParam("id") String id, Model model) throws Exception {
    	ReviewVO review = reviewService.readReview(id);
    	
		logger.info(" /read?id=kang URL called. then readReview method executed.");
        model.addAttribute("review", review);
        return "review/review_read";
    }
	
	// 리뷰 삭제
		@RequestMapping(value = "/delete", method = RequestMethod.GET)
	    public String deleteReview(@RequestParam("id") String id, Model model) throws Exception {
			reviewService.deleteReview(id);
	    	
			logger.info(" /delete URL called. then deleteReview method executed.");
	        return "redirect:/review/list";
	    }
	
	// 리뷰 작성 페이지 띄우기
	@RequestMapping(value = {"/write"}, method = RequestMethod.GET)
	public String addReviewGet() throws Exception {
		logger.info(" /write URL GET method called. then forward review_write.jsp.");
		return "review/review_write";
	}
	
    // 작성 페이지 들어가자
    @RequestMapping(value = {"/write"}, method = RequestMethod.POST)
	public String addReviewPost( @ModelAttribute("review") ReviewVO vo) throws Exception {
		reviewService.addReview(vo);
		logger.info(vo.toString());
		logger.info(" /write URL POST method called. then writeReview method executed.");
		return "redirect:/review/list";
	}
	
	// 수정 페이지 들어가자
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
    public String modifyReviewGet(@RequestParam("id") String id, Model model) throws Exception {
		ReviewVO review = reviewService.readReview(id);
    	
		logger.info(" /modify URL GET method called. then forward review_modify.jsp.");
        model.addAttribute("review", review);
        return "review/review_modify";
    }
	
	// 수정 사항 POST 형식으로 전달
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
    public String modifyReviewPost(@ModelAttribute("review") ReviewVO vo) throws Exception {
		reviewService.updateReview(vo);
		logger.info(vo.toString());
		logger.info(" /modify URL POST method called. then modifyReviewPost method executed.");
        return "redirect:/review/list";
    }

}