package org.strongme.wechat.controller.sys;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.strongme.wechat.pojo.Greeting;
import org.strongme.wechat.service.GreetingService;

@RestController
@RequestMapping("rest")
public class GreetingController {
	
	@Resource
	private GreetingService greetingService;
	
	@RequestMapping("/greetings")
	public List<Greeting> greetings(@RequestParam(value="name",defaultValue="World") String name) {
		return greetingService.list();
	}

}
