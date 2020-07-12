package org.kpu.yunweb.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kpu.yunweb.domain.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "org.kpu.yunweb.mapper.UserMapper";

	public String read(String id) throws Exception { // 이름 가져와
		String name = sqlSession.selectOne(namespace+".selectByid", id);
		return name;   
	}       
	
	public void add(UserVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}
	
	public boolean check(String id, String passwd) throws Exception{
		String pass = sqlSession.selectOne(namespace+".selectByid2", id);
		
		if(passwd.equals(pass)) {
			return true;
		} else {
			return false;
		}
	}

}