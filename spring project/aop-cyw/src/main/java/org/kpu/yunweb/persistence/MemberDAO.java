package org.kpu.yunweb.persistence;

import java.util.List;

import org.kpu.yunweb.domain.UserVO;

public interface MemberDAO {

	public void add(UserVO student) throws Exception;
	public String read(String id) throws Exception;
	public boolean check(String id, String passwd) throws Exception;

}
