package org.tp.ssm_tpzy.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.tp.ssm_tpzy.pojo.Message;
import org.tp.ssm_tpzy.service.MessageService;

@Controller
@RequestMapping("/mess")
public class MessageController {
	
   @Autowired
   private MessageService messageService;
   
   
     @RequestMapping("/tomess")
     public String tomess() {
    	 
    	 return "/Message/message";
     }
     
     /*
      * 
      * 前台分页显示在线留言
      * */
     @RequestMapping("/findAllByPage")
     @ResponseBody
     public Map<String,Object> findAllByPage(int is_delete,HttpServletRequest request,int page,int limit){
    	  Map<String,Object> map=new HashMap<String,Object>();
    	  HttpSession session=request.getSession();
    	  session.setAttribute("is_delete", is_delete);
    	  List<Message> mlist=messageService.find(is_delete);
    	  List<Message> list=new ArrayList<Message>();
    	  int count=mlist.size();
    	  if(page*limit<count) {
    		   list=mlist.subList((page-1)*limit, page*limit);
    	  }else {
    		   list=mlist.subList((page-1)*limit, count);
    	  }
    	    map.put("code",0 );
    	    map.put("mes", "");
    	    map.put("data", list);
    	    map.put("count", count);
     	 return map;
     }
     
     /**
      *添加在线留言
      **/
     @RequestMapping("/addByUser")
     @ResponseBody
     public Map<String,Object> addByUser(Message ms){
    	  Map<String,Object> map=new HashMap<String,Object>();
    	  try {
			ms.setCreateTime(new Date());
			  messageService.add(ms);
			  map.put("mes", "success");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.put("mes", "fail");
		}
    	 return map;
     }
     
     
     /**
      * 修改在线留言
      **/
     @RequestMapping("/goodUpdate")
     @ResponseBody
     public Map<String,Object> goodUpdate(Message ms){
    	  Map<String,Object> map=new HashMap<String,Object>();
    	  try {
			  ms.setUpdateTime(new Date());
			  messageService.update(ms);
			  map.put("mes", "success");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.put("mes", "fail");
		}
    	 return map;
     }
     
     /*
      * 审阅在线留言,可以改变留言状态
      * */
     @RequestMapping("/deletes")
     @ResponseBody
     public Map<String,Object> deletes(int messId){
    	  Map<String,Object> map=new HashMap<String,Object>();
    	  try {
    		  Message ms=messageService.findOne(messId);
    		  if(ms.getIs_delete()==1) {
    			  ms.setIs_delete(2);
    		  }else if(ms.getIs_delete()==2) {
    			  ms.setIs_delete(1);
    		  }
    		  ms.setUpdateTime(new Date());
			  messageService.delete(ms);
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
    	 int is_delete=(int) session.getAttribute("is_delete");
    	 map.put("mohu", mohu);
    	 map.put("is_delete", is_delete);
    	 List<Message> mlist=messageService.showGood(map);
    	 List<Message> list=new ArrayList<Message>();
    	 int count=mlist.size();
    	 if(page*limit<count){
    		  list=mlist.subList((page-1)*limit, page*limit);
    	 }else {
    		  list=mlist.subList((page-1)*limit, count); 
    	 }
    	 map.put("code", 0);
    	 map.put("mes", "");
    	 map.put("data", list);
    	 map.put("count", count);
    	 return map;
    	 
     }
     
     @RequestMapping("/del")
     @ResponseBody
     public Map<String,Object> del(int messId){
    	 Map<String,Object> map=new HashMap<String,Object>();
    	 try {
			messageService.del(messId);
			map.put("mes", "success");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.put("mes", "fail");
		}
    	 return map;
     }
}
