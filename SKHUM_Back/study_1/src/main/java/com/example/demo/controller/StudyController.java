package com.example.demo.controller;

import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.mapper.StudyModelMapper;
import com.example.demo.model.*;


@RestController
public class StudyController {
	
	// 컨트롤러 용 mapper 하나 선언
	private StudyModelMapper mapper;
	
	// 컨트롤러 실행 시 인터페이스 mapper와 컨트롤러 mapper 연결
	public StudyController(StudyModelMapper mapper) {
		this.setMapper(mapper);
	}
	
	@GetMapping("/user/all")
	public List<StudyModel> getUserProfileAll() {
		return mapper.getStudyModel();
	}
	
	@PutMapping("/user/{id}")
	public void putUserProfile(@PathVariable("id") int id, @RequestParam("name") String name) {
		mapper.insertUserProfile(id, name);
	}
	
	@PostMapping("/user/{id}")
	public void postUserProfile(@PathVariable("id") int id, @RequestParam("name") String name) {
		mapper.postUserprofile(id, name);
	}
	
	@PostMapping("/user/login")
	public void islogin(@RequestBody User user) {
		mapper.SuccessLogin(user.getId());
	}
	
	public void setMapper(StudyModelMapper mapper) {
		this.mapper = mapper;
	}
}
