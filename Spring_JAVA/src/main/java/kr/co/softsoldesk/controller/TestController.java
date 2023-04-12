package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.softsoldesk.beans.UserDataBean;

@Controller
public class TestController {
	/*
	@GetMapping("/test1")
	public String test1() {
		return "test1";
	}*/
	//#1
	@GetMapping("/test1")
	public String test1(UserDataBean bean) {
		
		bean.setUser_name("김두성");
		bean.setUser_id("admin");
		bean.setUser_pw("12345");
		bean.setUser_tel("010-5555-6666");
		bean.setUser_address("종로구");
		
		return "test1";
	}
	
	//#2
	@GetMapping("/test2")
	public String test2(UserDataBean bean) {
		
		bean.setUser_name("손유진");
		bean.setUser_id("user");
		bean.setUser_pw("12345");
		bean.setUser_tel("010-7777-6666");
		bean.setUser_address("송파구");
		
		return "test2";
	}
	//#3 testBean이라는 이름으로 주입
	@GetMapping("/test3")
	public String test3(@ModelAttribute("testBean") UserDataBean bean) {
		
		bean.setUser_name("박수");
		bean.setUser_id("park");
		bean.setUser_pw("12345");
		bean.setUser_tel("010-7777-6666");
		bean.setUser_address("고양시");
		
		return "test3";
	}
	
	//#4 CommendObject 사용대신 Model객체로 jsp 전달
	@GetMapping("/test4")
	public String test4(Model model) {
		UserDataBean bean=new UserDataBean();
		
		bean.setUser_name("이준호");
		bean.setUser_id("Lee");
		bean.setUser_pw("12345");
		bean.setUser_tel("010-7777-6666");
		bean.setUser_address("고양시");
		//Model의 객체를 이용하여 데이터 저장
		model.addAttribute("test_user2",bean);
		
		return "test4";
	}
	
	
	
	@PostMapping("/result")
	public String result() {
		return "result";
	}
	
	
}