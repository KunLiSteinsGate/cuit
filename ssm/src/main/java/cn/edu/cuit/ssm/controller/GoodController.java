package cn.edu.cuit.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.cuit.ssm.entity.Goods;
import cn.edu.cuit.ssm.service.GoodService;

@Controller
public class GoodController {
	
	@Autowired
	private GoodService goodService;
	
	@RequestMapping("/goodsList")
	public String getList(Model model)
	{
		List<Goods> ls = goodService.getGoodList();
		model.addAttribute("goodsList",ls);
		return "goodsList";
	}
}
