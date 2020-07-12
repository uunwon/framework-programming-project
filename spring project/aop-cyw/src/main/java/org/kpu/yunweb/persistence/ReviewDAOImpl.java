package org.kpu.yunweb.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kpu.yunweb.domain.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAOImpl implements ReviewDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "org.kpu.yunweb.mapper.ReviewMapper";

	public ReviewVO read(String id) throws Exception {
		ReviewVO vo = sqlSession.selectOne(namespace+".selectByid", id);
		return vo;   
	}
 
	public List<ReviewVO> readList() throws Exception {
		List<ReviewVO> reviewlist = new ArrayList<ReviewVO>();
		reviewlist = sqlSession.selectList(namespace + ".selectAll");
		return reviewlist;
	}
	
	public void add(ReviewVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	public void delete(String id) throws Exception {
		sqlSession.delete(namespace + ".delete", id);
	}

	public void update(ReviewVO review) throws Exception {
	    sqlSession.update(namespace + ".update", review);
	}

}
