package org.strongme.wechat.config;

import java.util.Map;

import me.chanjar.weixin.common.api.WxConsts;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.mp.api.WxMpMessageHandler;
import me.chanjar.weixin.mp.api.WxMpMessageRouter;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.WxMpXmlOutMessage;
import me.chanjar.weixin.mp.bean.WxMpXmlOutTextMessage;

public class CustomWxMpMsgRouter extends WxMpMessageRouter {

	public CustomWxMpMsgRouter(WxMpService mpService) {
		super(mpService);
		init();
	}

	private void init() {
		WxMpMessageHandler handler = new WxMpMessageHandler() {
			public WxMpXmlOutMessage handle(WxMpXmlMessage wxMessage,
					Map<String, Object> context, WxMpService wxMpService,
					WxSessionManager sessionManager) throws WxErrorException {
				String result = "欢迎关注Strongbuy "+wxMessage.getMsgType();;
				WxMpXmlOutTextMessage m = WxMpXmlOutMessage.TEXT()
						.content(result).fromUser(wxMessage.getToUserName())
						.toUser(wxMessage.getFromUserName()).build();
				return m;
			}
		};
		
		//关注之后发送
		this.rule().async(false).event(WxConsts.EVT_SUBSCRIBE).handler(handler).end();
		//文本消息
		this.rule().async(false).handler(handler).end();

	}

}
