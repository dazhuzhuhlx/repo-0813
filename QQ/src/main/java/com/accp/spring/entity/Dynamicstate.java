package com.accp.spring.entity;
import java.sql.Time;

public class Dynamicstate {
	private int stateId;
	private int spaceId;
	private String stateText;
	private Time stateTime;
	private String readed;
	public int getStateId() {
		return stateId;
	}
	public void setStateId(int stateId) {
		this.stateId = stateId;
	}
	public int getSpaceId() {
		return spaceId;
	}
	public void setSpaceId(int spaceId) {
		this.spaceId = spaceId;
	}
	public String getStateText() {
		return stateText;
	}
	public void setStateText(String stateText) {
		this.stateText = stateText;
	}
	public Time getStateTime() {
		return stateTime;
	}
	public void setStateTime(Time stateTime) {
		this.stateTime = stateTime;
	}
	public String getReaded() {
		return readed;
	}
	public void setReaded(String readed) {
		this.readed = readed;
	}
	@Override
	public String toString() {
		return "Dynamicstate [stateId=" + stateId + ", spaceId=" + spaceId + ", stateText=" + stateText + ", stateTime="
				+ stateTime + ", readed=" + readed + "]";
	}
}
