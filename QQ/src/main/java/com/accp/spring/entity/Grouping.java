package com.accp.spring.entity;

public class Grouping {
	private int groupingId;
	private String groupingName;
	private int userId;
	public int getGroupingId() {
		return groupingId;
	}
	public void setGroupingId(int groupingId) {
		this.groupingId = groupingId;
	}
	public String getGroupingName() {
		return groupingName;
	}
	public void setGroupingName(String groupingName) {
		this.groupingName = groupingName;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "Grouping [groupingId=" + groupingId + ", groupingName=" + groupingName + ", userId=" + userId + "]";
	}
}
