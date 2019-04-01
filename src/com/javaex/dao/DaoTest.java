package com.javaex.dao;

import java.util.List;

import com.javaex.vo.GuestBookVo;

public class DaoTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
				GuestBookDao dao = new GuestBookDao();
				
				// 리스트 테스트
				List<GuestBookVo> list = dao.getList();
				System.out.println(list.toString());
				
				// 저장 테스트
				GuestBookVo vo = new GuestBookVo();
				vo.setName("정우성");
				vo.setPassword("1234");
				vo.setContent("안녕하세요");
				
				int count = dao.insert(vo);
				System.out.println(count);
	}

}
