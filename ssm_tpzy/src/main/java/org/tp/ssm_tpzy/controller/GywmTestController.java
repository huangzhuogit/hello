package org.tp.ssm_tpzy.controller;

import java.util.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.tp.ssm_tpzy.pojo.GywmTest;
import org.tp.ssm_tpzy.service.GywmTestService;

@Controller
@RequestMapping("/gywm")
public class GywmTestController {
   @Autowired
   private GywmTestService gywmService;
   
   /*
    * 跳转页面
    * */
   @RequestMapping("/togywm")
   public String togywm() {
	   
	   return "/Gywm/gywm";
   }
   /*
    * 前台分页显示的接口
    * */
   @RequestMapping("/findAllByPage")
   @ResponseBody
   public Map<String,Object> findAllByPage(HttpServletRequest request,int is_delete,int limit,int page){
	   Map<String,Object> map=new HashMap<String, Object>();
	       HttpSession session=request.getSession();
	       session.setAttribute("is_delete", is_delete);
	       List<GywmTest> glist=gywmService.find(is_delete);
	       List<GywmTest> list=new ArrayList<GywmTest>();
	       int count=glist.size();
	       if(page*limit<count) {
	    	     list=glist.subList((page-1)*limit, page*limit);
	       }else {
	    	     list=glist.subList((page-1)*limit, count);
	       }
	        map.put("code", 0);
	        map.put("msg", "");
	        map.put("data", list);
	        map.put("count", count);
	       return map;  
   }
   
   /*
    * 添加
    * */
   @RequestMapping("/addByUser")
   @ResponseBody
   public Map<String,Object> addByUser(GywmTest gt){
	   Map<String,Object> map=new HashMap<String, Object>();
	       try {
			   gt.setCreateTime(new Date());   
			   gt.setIs_delete(1);
			   gywmService.add(gt);
			   map.put("mes", "success");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.put("mes", "fail");
		}
	       
	       return map;
   }
   /*
    * 修改
    * */
   @RequestMapping("/goodUpdate")
   @ResponseBody
   public Map<String,Object> goodUpdate(GywmTest gt){
	   Map<String,Object> map=new HashMap<String, Object>();
	       try {
			   gt.setUpdateTime(new Date());
			   gywmService.update(gt);
			   map.put("mes", "success");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.put("mes", "fail");
		}
	       
	       return map;
   }
   /*
    * 删除
    * */
    @RequestMapping("/deleteOne")
    @ResponseBody
    public Map<String,Object> deleteOne(int gywmTestId){
    	Map<String,Object> map=new HashMap<String, Object>();
    	try {
			GywmTest gt=gywmService.showOne(gywmTestId);
			if(gt.getIs_delete()==1) {
				gt.setIs_delete(0);
			}else if(gt.getIs_delete()==0) {
				gt.setIs_delete(1);
			}
			gywmService.deleteOne(gt);
			 map.put("mes", "success");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			 map.put("mes", "fail");
		}
    	return map;
    }
    /*
     * 根据任意字段的任意字查询包含该字的所有字段
     * */
    @RequestMapping("/showGood")
    @ResponseBody
    public Map<String,Object> showGood(String mohu,HttpServletRequest request,int page,int limit){
    	Map<String,Object> map=new HashMap<String, Object>();
    	HttpSession session=request.getSession();
    	int is_delete=(int) session.getAttribute("is_delete");
    	map.put("mohu", mohu);
    	map.put("is_delete", is_delete);
    	List<GywmTest> glist=gywmService.show(map);
	    List<GywmTest> list=new ArrayList<GywmTest>();
	    int count=glist.size();
	    if(page*limit<count) {
	    	     list=glist.subList((page-1)*limit, page*limit);
	       }else {
	    	     list=glist.subList((page-1)*limit, count);
	       }
	        map.put("code", 0);
	        map.put("msg", "");
	        map.put("data", list);
	        map.put("count", count);
    	return map;
    }
}
