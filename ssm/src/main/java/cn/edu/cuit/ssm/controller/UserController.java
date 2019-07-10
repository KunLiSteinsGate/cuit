package cn.edu.cuit.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cuit.ssm.service.UserService;
import cn.edu.cuit.ssm.service.impl.UserServiceImpl;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/toLogin")
	public String toLogin()
	{
		return "login";
	}
	
	@RequestMapping("/login")
	public String Login(@RequestParam String name,@RequestParam String pass,Model model)
	{
		boolean ret = userService.findNameAndPass(name, pass);
		if(ret)
		{
			return "success";
		}else
		{
			model.addAttribute("error","登录名或密码错误");
			model.addAttribute("name",name);
			return "login";
		}
	}
}
