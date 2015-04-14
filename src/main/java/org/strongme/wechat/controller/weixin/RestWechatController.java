package org.strongme.wechat.controller.weixin;

import javax.annotation.Resource;

import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpInMemoryConfigStorage;
import me.chanjar.weixin.mp.api.WxMpMessageRouter;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.result.WxMpUserList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("restwechat")
public class RestWechatController {
	
	@Resource
	private WxMpInMemoryConfigStorage wxConfig;
	@Resource
	private WxMpService wxMpService;
	@Autowired
	private WxMpMessageRouter customRouter;
	
	@RequestMapping("/userList")
	public WxMpUserList userList() throws WxErrorException {
		return wxMpService.userList(null);
	}

}
