package cn.edu.cuit.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cuit.ssm.entity.Goods;
import cn.edu.cuit.ssm.mapper.GoodMapper;
import cn.edu.cuit.ssm.service.GoodService;

@Service
public class GoodServiceImpl implements GoodService{
	
	@Autowired
	private GoodMapper goodMapper;
	
	@Override
	public List<Goods> getGoodList()
	{
		List<Goods> ls = goodMapper.findAll();
		return ls;
	}
}
