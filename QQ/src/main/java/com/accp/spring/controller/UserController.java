package com.accp.spring.controller;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.accp.spring.entity.Comment;
import com.accp.spring.entity.PraiseRecord;
import com.accp.spring.entity.User;
import com.accp.spring.service.UserService;
import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping(value="/user")
public class UserController {
	@Autowired
	private UserService userSvice;
//	注册
	@ResponseBody
	@RequestMapping("/InserUser")
	public int InserUser(String userName,String password,String nickName,HttpSession session) {
//		int i=(int) Math.ceil(Math.random()*1000-9999);
//		System.err.println(i);
//		随机QQ号
		userName = "2573";
		System.out.println("cs"+userName);
		session.setAttribute("userName",userName);
		return userSvice.InserUser(userName, password, nickName);
	}
	//将随机到的QQ号转到另一个页面显示
	@RequestMapping("/ChaUser")
	public String qqh(HttpSession session) {
		return "/qqjsp/enroll-4.jsp";
	}
	//登录
	@ResponseBody
	@RequestMapping("/selectUser")
	public String selectUser(String userName,String password,HttpSession session) {
		List<User> user = userSvice.selectUser(userName, password);
		System.out.println(user);
		if(user!=null) {
			session.setAttribute("user", user.get(0));
		}
		String str=JSON.toJSONString(user);
		return str;
	}
	
	//将登录用户的id传到主页面
		@RequestMapping("/middleId")
		public String middleId(HttpSession session) {
			return "/qqjsp/middle.jsp";
		}
		
	//查询到相应的用户
		@ResponseBody
		@RequestMapping("/cxuserName")
		public String cxuserName(String userName,HttpServletRequest request) {
//			System.out.println(userName);
			List<Map<String,Object>>list= userSvice.cxuserName(userName);
			String json = JSON.toJSONString(list);
			System.out.println(userSvice.cxuserName(userName));
			return json;
		}
		
//		增加一条好友申请 
		@ResponseBody
		@RequestMapping("/insertFriendapply")
		public int insertFriendapply(String pasvuserId,HttpSession session){
			User uer=new User();
			uer=(User) session.getAttribute("user");
			String applyuserId = uer.getUserName();
			return userSvice.insertFriendapply(applyuserId, pasvuserId);
		}
		
//		等待别人验证
		@ResponseBody
		@RequestMapping("/insertFriendapply_1")
		public String  selectFriendApply_1(HttpSession session){
			//System.err.println(121);
			User uer=new User();
			uer=(User) session.getAttribute("user");
			String applyuserId = uer.getUserName();
			String st=JSON.toJSONString(userSvice.selectFriendApply_1(applyuserId));
			return st;
		}
		
//		显示别人给我发送的好友请求   是否同意
		@ResponseBody
		@RequestMapping("/insertFriendapply_2")
		public String  selectFriendApply_2(HttpSession session){
			//System.err.println(121);
			User uer=new User();
			uer=(User) session.getAttribute("user");
			String pasvuserId = uer.getUserName();
			String st=JSON.toJSONString(userSvice.selectFriendApply_2(pasvuserId));
			return st;
		}
		
//		互相的好友请求已同意
		@ResponseBody
		@RequestMapping("/insertFriendapply_3")
		public String  selectFriendApply_3(HttpSession session){
			//System.err.println(121);
			User uer=new User();
			uer=(User) session.getAttribute("user");
			String userName_1 = uer.getUserName();
			String userName_2 = uer.getUserName();
			String st=JSON.toJSONString(userSvice.selectFriendApply_3(userName_1,userName_2));
			return st;
		}
		
//		互相的好友请求已同意
		@ResponseBody
		@RequestMapping("/insertFriendapply_4")
		public String  selectFriendApply_4(HttpSession session){
			//System.err.println(121);
			User uer=new User();
			uer=(User) session.getAttribute("user");
			String userName_1 = uer.getUserName();
			String userName_2 = uer.getUserName();
			String st=JSON.toJSONString(userSvice.selectFriendApply_4(userName_1,userName_2));
			return st;
		}
		
//		清空通知
		@ResponseBody
		@RequestMapping("/deleteFriendApply")
		public int deleteFriendApply(HttpSession session){
			User uer=new User();
			uer=(User) session.getAttribute("user");
			String applyuserId = uer.getUserName();
			return userSvice.deleteFriendApply(applyuserId);
		}
		
//		拒绝好友请求
		@ResponseBody
		@RequestMapping("/updateFriendApply_2")
		public int updateFriendApply_2(int applyId) {
			return userSvice.updateFriendApply_2(applyId);
		}
		
//		查询所有好友分组列表
		@ResponseBody
		@RequestMapping(value="/selectGrouping",produces="text/html;charset=UTF-8")
		public String selectGrouping(HttpSession session, HttpServletResponse resp) {
			resp.setContentType("text/html;charset=utf-8");
			User uer=new User();
			uer=(User) session.getAttribute("user");
			int applyuserId = uer.getUserId();
			String st=JSON.toJSONString(userSvice.selectGrouping(applyuserId));
			return st;
		}
		
//		增加好友分组
		@ResponseBody
		@RequestMapping("/insertGrouping")
		public int insertGrouping(String groupingName,HttpSession session) {
			User uer=new User();
			uer=(User) session.getAttribute("user");
			int userId = uer.getUserId();
			return userSvice.insertGrouping(groupingName, userId);
		}
		
//		显示所有自己空间发的说说
		@ResponseBody
		@RequestMapping("/selectDynamicstate")
		public String selectDynamicstate(HttpSession session){
			String st=JSON.toJSONString(userSvice.selectDynamicstate());
			return st;
		}
		
//		发一条说说
		@ResponseBody
		@RequestMapping("/insertDynamicstate")
		public int insertDynamicstate (String stateText,HttpSession session) {
			User uer=new User();
			uer=(User) session.getAttribute("user");
			int userId = uer.getUserId();
			return userSvice.insertDynamicstate(userId, stateText);
		}
		
//		点赞
		@ResponseBody
		@RequestMapping("/insertPraiseRecord")
		public int insertPraiseRecord(int stateId,HttpSession session) {
			User uer=new User();
			uer=(User) session.getAttribute("user");
			int userId = uer.getUserId();
			return userSvice.insertPraiseRecord(stateId, userId);
		}
		
//		查询到点赞的人
		@ResponseBody
		@RequestMapping("/selectPraiseRecord")
		public List<PraiseRecord> selectPraiseRecord(int stateId){
			return userSvice.selectPraiseRecord(stateId);
		}
		
//		显示评论的人
		@ResponseBody
		@RequestMapping("/selectComment")
		public List<Comment> selectComment(int stateId){
			return userSvice.selectComment(stateId);
		}
		
//		增加评论
		@ResponseBody
		@RequestMapping("/insertComment")
		public int insertComment(int stateId,String commentText,HttpSession session) {
			User uer=new User();
			uer=(User) session.getAttribute("user");
			int userId = uer.getUserId();
			return userSvice.insertComment(stateId, commentText, userId);
		}
		
		/*@ResponseBody
		@RequestMapping("/selectPasvuserId")
		public List<FriendApply> selectPasvuserId(HttpSession session){
			User uer=new User();
			uer=(User) session.getAttribute("user");
			int userId = uer.getUserId();
			return userSvice.selectPasvuserId(userId);
		}*/
}
