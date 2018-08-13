package com.accp.spring.entity;
import java.sql.Time;

public class PraiseRecord {
	private int praiseId;
	private int stateId;
	private int userid;
	private Time praiseTime;
	public int getPraiseId() {
		return praiseId;
	}
	public void setPraiseId(int praiseId) {
		this.praiseId = praiseId;
	}
	public int getStateId() {
		return stateId;
	}
	public void setStateId(int stateId) {
		this.stateId = stateId;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public Time getPraiseTime() {
		return praiseTime;
	}
	public void setPraiseTime(Time praiseTime) {
		this.praiseTime = praiseTime;
	}
	@Override
	public String toString() {
		return "StateId [praiseId=" + praiseId + ", stateId=" + stateId + ", userid=" + userid + ", praiseTime="
				+ praiseTime + "]";
	}
}
