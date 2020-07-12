package org.kpu.yunweb.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.kpu.yunweb.domain.UserVO;
import org.kpu.yunweb.exception.DataNotFoundException;
import org.kpu.yunweb.persistence.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	private Map<String, UserVO> storage = new HashMap<String, UserVO>();
	
	@Autowired
	private MemberDAO memberDAO;

	public String readMember(String id) throws Exception {
		return memberDAO.read(id);
	}
	
	public void addMember(UserVO user) throws Exception {
		memberDAO.add(user);
	}
	
	public boolean checkMember(String id, String passwd) throws Exception {
		//if(storage.get(passwd) ==  null) throw new DataNotFoundException(passwd);
		//return memberDAO.check(id, passwd);
		boolean ch = true;
		
		if(memberDAO.check(id, passwd)) {
			return ch;
		} else {
			ch = false;
			return ch;
		}
	}

}
