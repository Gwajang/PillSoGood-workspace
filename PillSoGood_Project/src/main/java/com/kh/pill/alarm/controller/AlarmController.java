package com.kh.pill.alarm.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.pill.alarm.model.service.AlarmService;
import com.kh.pill.alarm.model.vo.Alarm;

@Controller
public class AlarmController {
	
	@Autowired
	private AlarmService alarmService;
	
	@RequestMapping("insertQuestion.alarm")
	public void insertQuestionAlarm(Alarm a, String toId) {
		
		// 가장 최신 글번호 조회 후 +1
		int alarmNo = alarmService.selectMaxQuestionNo()+1;
		
		// toId에 맞는 memberNo 가져온후
		int memberNo = alarmService.selectMemberNo(toId);
		
		
		// url, memberNo -> alarm에 세팅해서 insert
		
		a.setMemberNo(memberNo);
		a.setAlarmUrl("detail.qu?qno="+alarmNo);
		
		
		alarmService.insertQuestionAlarm(a);
		
	}
	
	@ResponseBody
	@RequestMapping(value="selectList.alarm", produces="application/json; charset=UTF-8" )
	public String selectAlarmList(int memberNo) {
		
		ArrayList<Alarm> list = alarmService.selectAlarmList(memberNo);
		
		return new Gson().toJson(list);
	}
	
	
	@RequestMapping("insertAnswer.alarm")
	public void insertAnswerAlarm(Alarm a, String memberId) {
		
		int memberNo = alarmService.selectMemberNo(memberId);
		a.setMemberNo(memberNo);
		
		
		alarmService.insertQuestionAlarm(a);
	}
	
	
	@RequestMapping("alarmReadUpdate.alarm")
	public void alarmReadUpdate(int alarmNo) {
		
		int result = alarmService.alarmReadUpdate(alarmNo);
		
		
		
	}
	

}
