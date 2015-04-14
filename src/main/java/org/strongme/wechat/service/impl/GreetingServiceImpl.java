package org.strongme.wechat.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.strongme.wechat.dao.GreetingMapper;
import org.strongme.wechat.pojo.Greeting;
import org.strongme.wechat.service.GreetingService;

@Service
public class GreetingServiceImpl implements GreetingService {

	@Autowired
	private GreetingMapper greetingMapper;
	
	public List<Greeting> list() {
		return greetingMapper.list();
	}

}
