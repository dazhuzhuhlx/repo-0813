package com.accp.spring.mapper;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;

import com.accp.spring.entity.Comment;
import com.accp.spring.entity.Dynamicstate;
import com.accp.spring.entity.FriendApply;
import com.accp.spring.entity.Grouping;
import com.accp.spring.entity.PraiseRecord;
import com.accp.spring.entity.User;
public interface UserMapper {
	
//	注册
	int InserUser(@Param("userName")String userName,
				  @Param("password")String password,
				  @Param("nickName")String nickName);
//	登录
	List<User> selectUser(@Param("userName")String userName,
				  @Param("password")String password);
//	查询好友
	ArrayList<Map<String,Object>> cxuserName(@Param("userName")String userName);
	
//	增加一条好友申请 
	int insertFriendapply(@Param("applyuserId")String applyuserId,
			  @Param("pasvuserId")String pasvuserId);
//	显示好友发送等信息 1
	List<FriendApply> selectFriendApply_1(@Param("applyuserId")String applyuserId);
//	显示别人给我发送的好友请求   是否同意
	List<FriendApply> selectFriendApply_2(@Param("pasvuserId")String pasvuserId);
//	互相的好友请求已同意
	List<FriendApply> selectFriendApply_3(@Param("userName_1")String userName_1,
										  @Param("userName_2")String userName_2);
//	互相的好友请求已拒绝
	List<FriendApply> selectFriendApply_4(@Param("userName_1")String userName_1,
										  @Param("userName_2")String userName_2);
//	清空通知
	int deleteFriendApply(String applyuserId);
	
//	同意好友请求
	int updateFriendApply(int applyId);
	
//	拒绝好友请求
	int updateFriendApply_2(int applyId);
	
//	显示所有好友分组
	List<Grouping> selectGrouping(int userId);
	
//	添加好友分组
	int insertGrouping(@Param("groupingName")String groupingName,
					   @Param("userId")int userId);
//	显示所有自己空间发的说说
	List<Dynamicstate> selectDynamicstate();
	
//	发一条说说
	int insertDynamicstate(@Param("userId")int userId,@Param("stateText")String stateText);
	
//	点赞
	int insertPraiseRecord(@Param("stateId")int stateId,@Param("userId")int userId);
	
//	显示点赞的人
	List<PraiseRecord> selectPraiseRecord(@Param("stateId")int stateId);
	
//	显示评论的人
	List<Comment> selectComment(@Param("stateId")int stateId);
	
//	增加评论
	int insertComment(@Param("stateId")int stateId,@Param("commentText")String commentText,@Param("userId")int userId);
	
/*	List<FriendApply> selectPasvuserId(@Param("userId")int userId);*/
}
