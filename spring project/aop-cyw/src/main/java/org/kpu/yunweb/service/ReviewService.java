package org.kpu.yunweb.service;

import java.util.List;

import org.kpu.yunweb.domain.ReviewVO;

public interface ReviewService {
	
	public ReviewVO readReview(String id) throws Exception;
	public List<ReviewVO> readReviewList() throws Exception;
	public void addReview(ReviewVO review) throws Exception;
	public void deleteReview(String id) throws Exception; 
	public void updateReview(ReviewVO review) throws Exception;

}