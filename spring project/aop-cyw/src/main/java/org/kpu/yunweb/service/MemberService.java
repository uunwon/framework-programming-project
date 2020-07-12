package org.kpu.yunweb.service;

import java.util.List;

import org.kpu.yunweb.domain.UserVO;

public interface MemberService {
	
	public String readMember(String id) throws Exception;
	public void addMember(UserVO student) throws Exception;
	public boolean checkMember(String id, String passwd) throws Exception;
}
