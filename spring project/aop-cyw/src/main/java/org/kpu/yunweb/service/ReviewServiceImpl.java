package org.kpu.yunweb.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.kpu.yunweb.domain.ReviewVO;
import org.kpu.yunweb.domain.UserVO;
import org.kpu.yunweb.persistence.MemberDAO;
import org.kpu.yunweb.persistence.ReviewDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	public ReviewVO readReview(String id) throws Exception {
		return reviewDAO.read(id);
	}
	
	public List<ReviewVO> readReviewList() throws Exception{
		return reviewDAO.readList();
	}
	
	public void addReview(ReviewVO review) throws Exception {
		reviewDAO.add(review);
	}
	
	public void deleteReview(String id) throws Exception {
		reviewDAO.delete(id);
	}
	
	public void updateReview(ReviewVO review) throws Exception {
		reviewDAO.update(review);
	}
	
}
