package com.accp.spring.entity;
import org.w3c.dom.Text;

public class Comment {
	private int commentId;
	private int stateId;
	private String commentText;
	private int userId;
	private Text commentTime;
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public int getStateId() {
		return stateId;
	}
	public void setStateId(int stateId) {
		this.stateId = stateId;
	}
	public String getCommentText() {
		return commentText;
	}
	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Text getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Text commentTime) {
		this.commentTime = commentTime;
	}
	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", stateId=" + stateId + ", commentText=" + commentText + ", userId="
				+ userId + ", commentTime=" + commentTime + "]";
	}
}
