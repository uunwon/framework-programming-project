package org.kpu.yunweb.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kpu.yunweb.domain.UserVO;
import org.kpu.yunweb.persistence.MemberDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class MemberDAOTest {

	@Autowired
	private MemberDAO dao;
	private static Logger logger = LoggerFactory.getLogger(MemberDAOTest.class);
	
	@Test
	public void testReadByid() throws Exception {
		String name;
		name = dao.read("yunwon");

		logger.info(name.toString());
	}
}
