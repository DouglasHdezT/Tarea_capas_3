package com.uca.capas.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Student;

@Controller
public class MainController {

	@RequestMapping("/")
	public ModelAndView initMain() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("main");
		mav.addObject("student", new Student());
		mav.addObject("message", "Bienvenidos a MVC");
		
		return mav;
	}
	
	@RequestMapping("/actionForm")
	public ModelAndView manageStudent(@ModelAttribute Student student) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("result");
		mav.addObject("student" ,student);
		
		ArrayList<Student> students =  new ArrayList<>();
		
		students.add(new Student("Antonio", "Torres", "12/5/78", "Ing Informatica", "Ironman muere"));
		students.add(new Student("Rafael", "Lopez", "10/6/86", "Ing Quimica", "Capitan america es digno"));
		students.add(new Student("Andrea", "Serpas", "25/10/94", "Ing Industrial", "Bruce y Hulk 1 solo"));
		students.add(new Student());
		
		
		mav.addObject("students", students);
		
		return mav;
	}
}
