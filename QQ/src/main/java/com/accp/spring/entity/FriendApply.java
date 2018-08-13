package com.accp.spring.entity;

import java.sql.Date;

public class FriendApply {
	private int applyId;
	private String remark;
	private String  applyuserId;
	private String  pasvuserId;
	private int isOk;
	private Date applyTime;
	private int groupId;
	private String beizhuName;
	public int getApplyId() {
		return applyId;
	}
	public void setApplyId(int applyId) {
		this.applyId = applyId;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getApplyuserId() {
		return applyuserId;
	}
	public void setApplyuserId(String applyuserId) {
		this.applyuserId = applyuserId;
	}
	public String getPasvuserId() {
		return pasvuserId;
	}
	public void setPasvuserId(String pasvuserId) {
		this.pasvuserId = pasvuserId;
	}
	public int getIsOk() {
		return isOk;
	}
	public void setIsOk(int isOk) {
		this.isOk = isOk;
	}
	public Date getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}
	public int getGroupId() {
		return groupId;
	}
	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}
	public String getBeizhuName() {
		return beizhuName;
	}
	public void setBeizhuName(String beizhuName) {
		this.beizhuName = beizhuName;
	}
	@Override
	public String toString() {
		return "FriendApply [applyId=" + applyId + ", remark=" + remark + ", applyuserId=" + applyuserId
				+ ", pasvuserId=" + pasvuserId + ", isOk=" + isOk + ", applyTime=" + applyTime + ", groupId=" + groupId
				+ ", beizhuName=" + beizhuName + "]";
	}
}
