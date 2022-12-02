package com.kh.pill.common.socket;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

//import com.kh.pill.member.model.vo.Member;

public class EchoHandler extends TextWebSocketHandler {
	private static final Logger logger = LoggerFactory.getLogger(WebSocketHandler.class);
	//로그인 한 인원 전체
	private List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	// 1:1로 할 경우
	private Map<String, WebSocketSession> userSessionsMap = new HashMap<String, WebSocketSession>();
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {//클라이언트와 서버가 연결
		// TODO Auto-generated method stub
		// logger.info("Socket 연결");
		sessions.add(session);
		// logger.info(currentUserName(session));//현재 접속한 사람
		String senderId = currentUserName(session);
		userSessionsMap.put(senderId,session);
		
	}
	
	@SuppressWarnings("deprecation")
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {// 메시지

		
		String msg = message.getPayload();//자바스크립트에서 넘어온 Msg
		
		
		if (!StringUtils.isEmpty(msg)) {
			
			String[] strs = msg.split(",");
			if(strs != null && strs.length == 5) {
				
				String cmd = strs[0];
				String fromId = strs[1];
				String toId = strs[2];
				String bno = strs[3];
				String title = strs[4];
				
				WebSocketSession toIdSession = userSessionsMap.get(toId);
				
				if ("reply".equals(cmd) && toIdSession != null && !fromId.equals(toId)) {
					TextMessage tmpMsg = new TextMessage(fromId + "님이 "
							+ "<a href='/spring/detail.bo?bno="+ bno + "'  style='color: black'>"
							+ title+" 에 댓글을 달았습니다!</a>");
					toIdSession.sendMessage(tmpMsg);
				} else if("board".equals(cmd)) {
					toId = "admin";
					toIdSession = userSessionsMap.get(toId);
					if(!fromId.equals(toId)) {
						TextMessage tmpMsg = new TextMessage(fromId + "님이 "
								+ bno + "에 글을 작성하셨습니다." );
						toIdSession.sendMessage(tmpMsg);
					}
					
				}
				
			}
			
		}
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {//연결 해제
		// TODO Auto-generated method stub
		// logger.info("Socket 끊음");
		sessions.remove(session);
		userSessionsMap.remove(currentUserName(session),session);
		
	}

	
	private String currentUserName(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
	//	Member loginUser = (Member)httpSession.get("loginUser");
		
//		if(loginUser == null) {
			
			return null;
//		}

//		return loginUser.getUserId();
		
	}
}