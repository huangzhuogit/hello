package org.tp.ssm_tpzy.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.tp.ssm_tpzy.pojo.UserInfo;
import org.tp.ssm_tpzy.service.UserInfoService;
import org.tp.ssm_tpzy.util.SmsDemo;
import org.tp.ssm_tpzy.util.VerifyCodeUtils;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;

@Controller
@RequestMapping("/user")
public class UserInfoController {

	   @Autowired
	   private UserInfoService userinfoService;
	   
	
	   /*
	    * 简单跳转页面
	    * */
	   @RequestMapping("/loginJsp")
	   public String loginJsp(HttpServletRequest request) {
		   HttpSession session=request.getSession();
		   session.removeAttribute("user");
		   return "/UserInfo/log";
	   }
	   
	   @RequestMapping("/viow")
	   public String viow() {
		   return "/UserInfo/viow";
	   }
	   /*
	    * 简单跳转页面
	    * */
	   @RequestMapping("/back")
	   public String back(HttpServletRequest request) {
		   HttpSession session=request.getSession();
		   UserInfo u=(UserInfo) session.getAttribute("user");
		   if(u==null) {
			   return "/UserInfo/log";
		   }
		   return "/UserInfo/back";
	   }
	   /*
	    * 简单跳转页面
	    * */
	   @RequestMapping("/userlist")
		  public String userlist() {
		  return "/UserInfo/userList";
		  }
	   
	   /*
	    * 获取登录验证码 
	    * */
	  @RequestMapping("/getCode")
	  @ResponseBody
	  public Map<String,Object> getCode(HttpServletResponse response,HttpServletRequest request) {
		  Map<String,Object> jsonMap=new HashMap<String,Object>();
		    HttpSession session=request.getSession();
		    try {
				String code=VerifyCodeUtils.generateVerifyCode(4);//得到登录验证码
				OutputStream os=response.getOutputStream();
				VerifyCodeUtils.outputImage(116, 36, os, code);
				session.setAttribute("code", code);//把验证码存入session
				jsonMap.put("code", code);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  
		  return jsonMap;
	  }
	  
	  /*
	   * 获取验证码,登录
	   * */
	  @RequestMapping("/login")
	  @ResponseBody
	  public Map<String,Object> login(UserInfo u,HttpServletRequest request,String coded){
		  Map<String,Object> jsonMap=new HashMap<String,Object>();
		  HttpSession session=request.getSession();
		  String codea=(String) session.getAttribute("code");//把验证码从session取出来
		  if(coded.equalsIgnoreCase(codea)) {//将前台得到的验证码与session中的验证码进行比对
			     u=userinfoService.login(u.getLoginName(),u.getLoginPwd());//利用登录名与密码进行查找
			     if(u!=null){
			    	 session.setAttribute("user", u);//查找出来的结果存入session
			    	 jsonMap.put("mes", "success");
			     }else {
			    	 jsonMap.put("mes", "fail");
			     }
		  }else {
			  jsonMap.put("mes", "codeFail");
		  }
		  
		  return jsonMap;
	  }
	  /*
	   * 获取手机验证码
	   * */
	  @RequestMapping("/getCodedx")
	  @ResponseBody
		public Map<String,Object> getCodedx(HttpServletRequest request,UserInfo u) {
		  Map<String,Object> jsonMap=new HashMap<String,Object>();
		  HttpSession session=request.getSession();	  
		  try {
			String codeb=String.valueOf(new Random().nextInt(90000)+100000);//得到手机验证码
				SendSmsResponse response=SmsDemo.sendSms(u.getUserPhone(), codeb);
				if(response.getCode().equalsIgnoreCase("OK")){
				session.setAttribute("codeb",codeb);//手机验证码出入session
				session.setAttribute("phoneww", u.getUserPhone());//手机号存入session
				jsonMap.put("mes", "success");
				}else{
					jsonMap.put("mes", "fail");
				}
		} catch (ClientException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			jsonMap.put("mes", "error");
		}
	         return jsonMap;
	  }
	   
	  /*
	   * 通过获取手机验证码来进行注册(密码为手机号后6位)
	   * */
	  @RequestMapping("/pdCode")
	  @ResponseBody
	  public Map<String,Object> pdCode(UserInfo u,HttpServletRequest request,String coded){
		  Map<String,Object> jsonMap=new HashMap<String,Object>();
		  HttpSession session=request.getSession();	  
		      String code=(String) session.getAttribute("codeb");//将手机验证码从session中取出来
		      if(coded.equalsIgnoreCase(code)) {
		    	  u.setLoginPwd(u.getUserPhone().substring(u.getUserPhone().length()-6, u.getUserPhone().length()));//将手机号码后6位截取出来当密码
		    	  u.setCreateTime(new Date());//给一个当时时间存入
		    	  u.setIs_delete(1);//把is_delete当默认值为1
		    	   userinfoService.right(u);//进行注册
		    	   jsonMap.put("mes", "success");
		      }else {
		    	  jsonMap.put("mes", "codeError");
		      }
		  return jsonMap;
	  }
	  
	  /*
	   * 当我们添加的时候会检查是否已有数据,如果有那么就不能添加这一行数据
	   * */
	  @RequestMapping("/yanzName")
	  @ResponseBody
		public Map<String,Object> yanzName(UserInfo hgood) {
			 Map<String,Object> map=new HashMap<String,Object>();
			 UserInfo u=userinfoService.yanName(hgood);//根据前台传过来的值进行查询
			 if(u!=null) {
				 map.put("mes", "fail");
			 }else {
				 map.put("mes", "success");
			 }
	     return map;
	  }
	  /*
	   * 当我们添加的时候会检查是否已有数据,如果有那么就不能添加这一行数据
	   * */
	  @RequestMapping("/yanzphone")
	  @ResponseBody
		public Map<String,Object> yanzphone(UserInfo hgood) {
			 Map<String,Object> map=new HashMap<String,Object>();
			 UserInfo u=userinfoService.yanPhone(hgood);//根据前台传过来的值进行查询
			 if(u!=null) {
				 map.put("mes", "fail");
			 }else {
				 map.put("mes", "success");
			 }
	     return map;
	  }
	  
	
	  
	  /*
	   * 分页显示用户列表
	   * */
	  @RequestMapping("/findAllByPage")
	  @ResponseBody
	  public Map<String,Object> findAllByPage(int is_delete,HttpServletRequest request,int page,int limit){
		  Map<String,Object> map=new HashMap<String,Object>();
		  HttpSession session=request.getSession();	  
		  session.setAttribute("is_delete", is_delete);//前台给一个默认is_delete 进行存入session
		  List<UserInfo> ulist=userinfoService.findAll(is_delete);//根据前台给的默认值来查询数据
		  List<UserInfo> list=new ArrayList<UserInfo>();
		  int count=ulist.size();//查询出来数据的条数
		  if(page*limit<count) {
			   list=ulist.subList((page-1)*limit, page*limit);//截取，分页
		  }else {
			   list=ulist.subList((page-1)*limit, count);
		  }
		     map.put("code", 0);
		     map.put("msg", "");
		     map.put("data", list);
		     map.put("count",count );
		  return map;
	  }
	  
	  /*
	   * 添加用户
	   * */
	  @RequestMapping("/addByUser")
	  @ResponseBody
	  public Map<String,Object> addByUser(UserInfo userinfo){
		  Map<String,Object> map=new HashMap<String,Object>();
	           try {
	        	   userinfo.setCreateTime(new Date());//给一个默认的时间进行存值
	        	   userinfo.setIs_delete(1);//把is_delete默认值为1存入
				   userinfoService.right(userinfo);
				   map.put("mes", "success");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				   map.put("mes", "fail");
			}
		  return map;
	  }
	  
	  /*
	   * 删除用户
	   * */
	  @RequestMapping("/deleteOne")
	  @ResponseBody
	  public Map<String,Object> deleteOne(int  uid){
		  Map<String,Object> map=new HashMap<String,Object>();
		  try {
		  UserInfo ui=userinfoService.getOne(uid);//根据ID查询单个
		     if(ui.getIs_delete()==1) {
		    	 ui.setIs_delete(0);
		     }else if(ui.getIs_delete()==0) {
		    	 ui.setIs_delete(1);
		     }
			userinfoService.deleteOne(ui);
			 map.put("mes", "success");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			 map.put("mes", "fail");
		}
		  
		  return map;
	  }
	 
	  
	  /*
	   * 修改用户数据
	   * */
	  @RequestMapping("/goodUpdate")
	  @ResponseBody
	  public Map<String,Object> goodUpdate(UserInfo userinfo){
		  Map<String,Object> map=new HashMap<String,Object>();
	           try {
	        	   userinfo.setUpdateTime(new Date());//给时间一个当时值
	        	   userinfo.setIs_delete(1);
				   userinfoService.update(userinfo);
				   map.put("mes", "success");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				   map.put("mes", "fail");
			}
		  return map;
	  }
	  /*
	   * 根据任意字段可以查询吧包含该字段的所有数据
	   * */
	  @RequestMapping("/showGood")
	  @ResponseBody
	  public Map<String,Object> showGood(String mohu,HttpServletRequest request,int limit,int page){
		  Map<String,Object> map=new HashMap<String,Object>();
		   HttpSession session=request.getSession();
		   int is_delete=(int) session.getAttribute("is_delete");//取出上面存在session的is_delete值
		   map.put("mohu", mohu);
		   map.put("is_delete",is_delete);
		   List<UserInfo> ulist= userinfoService.showGood(map);//根据条件查询
		   List<UserInfo> list=new ArrayList<UserInfo>();
		   int count=ulist.size();
		   if(page*limit<count) {
			   list=ulist.subList((page-1)*limit, limit*page);//截取，。分页
		   }else {
			   list=ulist.subList((page-1)*limit, count);
		   }
		   Map<String,Object> jsonMap=new HashMap<String,Object>();
		   jsonMap.put("code", 0);
		   jsonMap.put("msg", "");
		   jsonMap.put("data", list);
		   jsonMap.put("count", count);
		  return jsonMap;
	  }
	  
}
