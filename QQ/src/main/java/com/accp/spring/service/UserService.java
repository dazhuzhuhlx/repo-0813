package com.accp.spring.service;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.spring.entity.Comment;
import com.accp.spring.entity.Dynamicstate;
import com.accp.spring.entity.FriendApply;
import com.accp.spring.entity.Grouping;
import com.accp.spring.entity.PraiseRecord;
import com.accp.spring.entity.User;
import com.accp.spring.mapper.UserMapper;

@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;
	
	public int InserUser(String userName,String password,String nickName) {
		return userMapper.InserUser(userName, password, nickName);
	}
	public List<User> selectUser(String userName,String password){
		return userMapper.selectUser(userName, password);
	}
	public ArrayList<Map<String,Object>> cxuserName(String userName) {
		return userMapper.cxuserName(userName);
	}
	public int insertFriendapply(String applyuserId,String pasvuserId){
		return userMapper.insertFriendapply(applyuserId, pasvuserId);
	}
	public List<FriendApply> selectFriendApply_1(String applyuserId){
		return userMapper.selectFriendApply_1(applyuserId);
	}
	public List<FriendApply> selectFriendApply_2(String pasvuserId){
		return userMapper.selectFriendApply_2(pasvuserId);
	}
	public List<FriendApply> selectFriendApply_3(String userName_1,String userName_2){
		return userMapper.selectFriendApply_3(userName_1,userName_2);
	}
	public List<FriendApply> selectFriendApply_4(String userName_1,String userName_2){
		return userMapper.selectFriendApply_4(userName_1,userName_2);
	}
	public int deleteFriendApply(String applyuserId) {
		return userMapper.deleteFriendApply(applyuserId);
	}
	public int updateFriendApply_2(int applyId) {
		return userMapper.updateFriendApply_2(applyId);
	}
	public List<Grouping> selectGrouping(int userId){
		return userMapper.selectGrouping(userId);
	}
	public int insertGrouping(String groupingName,int userId) {
		return userMapper.insertGrouping(groupingName, userId);
	}
	public List<Dynamicstate> selectDynamicstate(){
		return userMapper.selectDynamicstate();
	}
	public int insertDynamicstate(int userId,String stateText) {
		return userMapper.insertDynamicstate(userId,stateText);
	}
	public int insertPraiseRecord(int stateId,int userId) {
		return userMapper.insertPraiseRecord(stateId, userId);
	}
	public List<PraiseRecord> selectPraiseRecord(int stateId){
		return userMapper.selectPraiseRecord(stateId);
	}
	public List<Comment> selectComment(int stateId){
		return userMapper.selectComment(stateId);
	}
	public int insertComment(int stateId,String commentText,int userId) {
		return userMapper.insertComment(stateId, commentText, userId);
	}
/*	public List<FriendApply> selectPasvuserId(int userId){
		return userMapper.selectPasvuserId(userId);
	}*/
}
