package cn.edu.cuit.ssm.service;

import org.springframework.transaction.annotation.Transactional;

public interface UserService {
	
	boolean findNameAndPass(String name,String pass);
}
