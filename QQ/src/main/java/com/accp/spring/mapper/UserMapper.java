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
	
//	ע��
	int InserUser(@Param("userName")String userName,
				  @Param("password")String password,
				  @Param("nickName")String nickName);
//	��¼
	List<User> selectUser(@Param("userName")String userName,
				  @Param("password")String password);
//	��ѯ����
	ArrayList<Map<String,Object>> cxuserName(@Param("userName")String userName);
	
//	����һ���������� 
	int insertFriendapply(@Param("applyuserId")String applyuserId,
			  @Param("pasvuserId")String pasvuserId);
//	��ʾ���ѷ��͵���Ϣ 1
	List<FriendApply> selectFriendApply_1(@Param("applyuserId")String applyuserId);
//	��ʾ���˸��ҷ��͵ĺ�������   �Ƿ�ͬ��
	List<FriendApply> selectFriendApply_2(@Param("pasvuserId")String pasvuserId);
//	����ĺ���������ͬ��
	List<FriendApply> selectFriendApply_3(@Param("userName_1")String userName_1,
										  @Param("userName_2")String userName_2);
//	����ĺ��������Ѿܾ�
	List<FriendApply> selectFriendApply_4(@Param("userName_1")String userName_1,
										  @Param("userName_2")String userName_2);
//	���֪ͨ
	int deleteFriendApply(String applyuserId);
	
//	ͬ���������
	int updateFriendApply(int applyId);
	
//	�ܾ���������
	int updateFriendApply_2(int applyId);
	
//	��ʾ���к��ѷ���
	List<Grouping> selectGrouping(int userId);
	
//	��Ӻ��ѷ���
	int insertGrouping(@Param("groupingName")String groupingName,
					   @Param("userId")int userId);
//	��ʾ�����Լ��ռ䷢��˵˵
	List<Dynamicstate> selectDynamicstate();
	
//	��һ��˵˵
	int insertDynamicstate(@Param("userId")int userId,@Param("stateText")String stateText);
	
//	����
	int insertPraiseRecord(@Param("stateId")int stateId,@Param("userId")int userId);
	
//	��ʾ���޵���
	List<PraiseRecord> selectPraiseRecord(@Param("stateId")int stateId);
	
//	��ʾ���۵���
	List<Comment> selectComment(@Param("stateId")int stateId);
	
//	��������
	int insertComment(@Param("stateId")int stateId,@Param("commentText")String commentText,@Param("userId")int userId);
	
/*	List<FriendApply> selectPasvuserId(@Param("userId")int userId);*/
}
