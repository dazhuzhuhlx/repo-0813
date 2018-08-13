package com.accp.spring.entity;
import org.w3c.dom.Text;
import com.mysql.fabric.xmlrpc.base.Data;

public class User {
	private int userId;
	private String userName;
	private String password;
	private String nickName;
	private Data createTime;
	private Text headImg;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public Data getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Data createTime) {
		this.createTime = createTime;
	}
	public Text getHeadImg() {
		return headImg;
	}
	public void setHeadImg(Text headImg) {
		this.headImg = headImg;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", password=" + password + ", nickName=" + nickName
				+ ", createTime=" + createTime + ", headImg=" + headImg + "]";
	}
}
