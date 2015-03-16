package org.strongme.wechat.controller.sys;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.result.WxMpOAuth2AccessToken;
import me.chanjar.weixin.mp.bean.result.WxMpUser;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	

	@Resource
	private WxMpService wxMpService;
	
	@RequestMapping(value="")
	public String index(Model model,HttpServletRequest request) {
		return "modules/sys/main/index";
	}
	
	@RequestMapping(value="categories")
	public String list(Model model,HttpServletRequest request) {
		return "modules/sys/main/categories";
	}
	
	
	@RequestMapping(value="/code_for_token")
	public String codeForToken(HttpServletRequest request) throws WxErrorException {
		String code = request.getParameter("code");
		if(code!=null&&!"".equals(code)) {
			WxMpOAuth2AccessToken wxMpOAuth2AccessToken = wxMpService.oauth2getAccessToken(code);
			WxMpUser wxMpUser = wxMpService.oauth2getUserInfo(wxMpOAuth2AccessToken, "zh_CN");
			request.setAttribute("user", wxMpUser);
		}
		return "modules/sys/main/index";
	}
	
}
