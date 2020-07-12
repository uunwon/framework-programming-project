package org.kpu.yunweb.persistence;

import java.util.List;

import org.kpu.yunweb.domain.ReviewVO;

public interface ReviewDAO {
	
	public void add(ReviewVO review) throws Exception;
	public List<ReviewVO> readList() throws Exception;
	public ReviewVO read(String id) throws Exception;
	public void delete(String id) throws Exception;
	public void update(ReviewVO review) throws Exception;

}
