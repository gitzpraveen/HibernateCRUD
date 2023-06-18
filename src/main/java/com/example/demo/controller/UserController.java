package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.UserDAO;
import com.example.demo.model.User;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	@Autowired
	UserDAO userdao;

	@RequestMapping("index")
	public String user() {

		return "index.jsp";
	}

	@RequestMapping("adduser")
	public String addUserDet(User user) {
		userdao.save(user);
		return "save.jsp";
	}

	@RequestMapping("getuser")
	public ModelAndView getUser(@RequestParam int id) {
		ModelAndView m = new ModelAndView("view.jsp");
		User user = userdao.findById(id).orElse(null);
		m.addObject(user);
		return m;
	}

	@RequestMapping("del")
	public ModelAndView delUser(@RequestParam int id) {
		ModelAndView m = new ModelAndView("del.jsp");
		User user = userdao.findById(id).orElse(null);
		userdao.deleteById(id);
		m.addObject(user);
		return m;
	}

	@RequestMapping("update")
	public ModelAndView updateUser(User user) {
		ModelAndView m = new ModelAndView("update.jsp");
		user = userdao.findById(user.getId()).orElse(null);
		userdao.deleteById(user.getId());
		m.addObject(user);
		return m;
	}
}
