package cn.edu.cuit.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cuit.ssm.mapper.UserMapper;
import cn.edu.cuit.ssm.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public boolean findNameAndPass(String name,String pass)
	{
		int ret = userMapper.findNameAndPass(name,pass);
		
		if(ret>0)
		{
			return true;
		}
		return false;
	}
}
