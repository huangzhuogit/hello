package org.tp.ssm_tpzy.controller;

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
import org.tp.ssm_tpzy.pojo.HyzxTest;
import org.tp.ssm_tpzy.pojo.Test;
import org.tp.ssm_tpzy.service.ShouyeService;

@Controller
@RequestMapping("/shouye")
public class ShouyeController {
   
	   @Autowired
	   private ShouyeService shouyeService;

	   /*
	    * 在跳转页面同事根据不同的产品类型ID查询不同的所属产品详情
	    * */
	   @RequestMapping("/indexJsp")
	   public String toShouye(HttpServletRequest request) {
		   HttpSession session=request.getSession();
		   List<Test> tlistone=shouyeService.findOne(1);
		   List<Test> tlisttwo=shouyeService.findOne(2);
		   List<Test> tlistthree=shouyeService.findOne(3);
		   List<Test> tlistfour=shouyeService.findOne(4);
		   List<Test> tlistfive=shouyeService.findOne(5);
		   session.setAttribute("tlistone", tlistone);
		   session.setAttribute("tlisttwo", tlisttwo);
		   session.setAttribute("tlistthree", tlistthree);
		   session.setAttribute("tlistfour", tlistfour);
		   session.setAttribute("tlistfive", tlistfive);
		   return "/Qiantai/index";
	   }
	   
	   /*
	    * 根据首页传过来的值进行查找跳转
	    * */
	   @RequestMapping("/toprotet")
	   public String toprotet(HttpServletRequest request,Test t) {
		   HttpSession session=request.getSession();
		   Test te=shouyeService.show(t);
		   List<Test> tlistone=shouyeService.findOne(1);
		   List<Test> tlisttwo=shouyeService.findOne(2);
		   List<Test> tlistthree=shouyeService.findOne(3);
		   List<Test> tlistfour=shouyeService.findOne(4);
		   List<Test> tlistfive=shouyeService.findOne(5);
		   session.setAttribute("tlistone", tlistone);
		   session.setAttribute("tlisttwo", tlisttwo);
		   session.setAttribute("tlistthree", tlistthree);
		   session.setAttribute("tlistfour", tlistfour);
		   session.setAttribute("tlistfive", tlistfive);
		   session.setAttribute("te", te);
		   return "/Qiantai/protect";
	   }
	   
	   /*
	    * 简单跳转页面--关于我们叶苗苗
	    * */
	   @RequestMapping("/contectus") 
	   public String contectus(HttpServletRequest request) {
		   HttpSession session=request.getSession();
		   List<GywmTest> list=shouyeService.showGywm();
		   session.setAttribute("list", list);
		   return "/Qiantai/contectus";
	   }
	   
	   
	   /*
	    * 简单跳转页面--关于我们子页面
	    * */
	   @RequestMapping("/usdetail") 
	   public String usdetail(HttpServletRequest request,GywmTest gt) {
		   HttpSession session=request.getSession();
		   GywmTest gy=shouyeService.showOneGywm(gt);
		   session.setAttribute("gy", gy);
		   return "/Qiantai/usdetail";
	   }
	   
	   /*
	    * 简单跳转页面--新闻资讯页面
	    * */
	   @RequestMapping("/news")  
	   public String news(HttpServletRequest request) {
		   HttpSession session=request.getSession();
		   List<HyzxTest> hlist=shouyeService.news();
		   session.setAttribute("hlist", hlist);
		   return "/Qiantai/news";
	   }
	   
	   /*
	    * 简单跳转页面--新闻资讯子页面
	    * */
	   @RequestMapping("/newsdetail") 
	   public String newsdetail(HttpServletRequest request,HyzxTest gt) {
		   HttpSession session=request.getSession();
		   HyzxTest gyzx=shouyeService.newsdetail(gt);
		   session.setAttribute("gyzx", gyzx);
		   return "/Qiantai/newsdetail";
	   }
	   
	   /*
	    * 查询功能
	    * */
	   @RequestMapping("/checkField")
	   @ResponseBody
	   public Map<String,Object> checkField(String mohu,int is_delete){
		   Map<String,Object> map=new HashMap<String, Object>();
		   try {
			   map.put("mohu", mohu);
			   map.put("is_delete", is_delete);
			   Test tlist=shouyeService.zhigaibian(map);
			   if(tlist.getType().getTid()==1){
				   map.put("mes", "one");
			   }else if(tlist.getType().getTid()==2){
				   map.put("mes", "two");
			   }else if(tlist.getType().getTid()==3){
				   map.put("mes", "three");
			   }else if(tlist.getType().getTid()==4){
				   map.put("mes", "four");
			   }else if(tlist.getType().getTid()==5){
				   map.put("mes", "five");
			   }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.put("mes", "fail");
		}
		   return map;
	   }
	   /*
	    * 跳转反恐页面
	    * */
	   @RequestMapping("/totrain")
	   public String totrain(HttpServletRequest request,Test t) {
		   HttpSession session=request.getSession();
		   Test fankong=shouyeService.show(t);
		   List<Test> elistone=shouyeService.findOne(1);
		   List<Test> elistfive=shouyeService.findOne(5);
		   session.setAttribute("elistone", elistone);
		   session.setAttribute("elistfive", elistfive);
		   session.setAttribute("fankong", fankong);
		   return "/Qiantai/train";
	   }
	   
	   /*
	    * 跳转治安页面
	    * */
	   @RequestMapping("/topublic")
	   public String topublic(HttpServletRequest request,Test t) {
		   HttpSession session=request.getSession();
		   Test pub=shouyeService.show(t);
		   List<Test> wlistone=shouyeService.findOne(1);
		   List<Test> wlistthree=shouyeService.findOne(3);
		   session.setAttribute("wlistone", wlistone);
		   session.setAttribute("wlistthree", wlistthree);
		   session.setAttribute("pub", pub);
		   return "/Qiantai/public";
	   }
	   
	   /*
	    * 跳转警务战术页面
	    * */
	   @RequestMapping("/totip")
	   public String totip(HttpServletRequest request,Test t) {
		   HttpSession session=request.getSession();
		   Test tip=shouyeService.show(t);
		   List<Test> qlistone=shouyeService.findOne(1);
		   List<Test> qlistfour=shouyeService.findOne(4);
		   session.setAttribute("qlistone", qlistone);
		   session.setAttribute("qlistfour", qlistfour);
		   session.setAttribute("tip", tip);
		   return "/Qiantai/tip";
	   }
	   /*
	    * 跳转交通管理页面
	    * */
	   @RequestMapping("/topass")
	   public String topass(HttpServletRequest request,Test t) {
		   HttpSession session=request.getSession();
		   Test ps=shouyeService.show(t);
		   List<Test> listone=shouyeService.findOne(1);
		   List<Test> listtwo=shouyeService.findOne(2);
		   session.setAttribute("listone", listone);
		   session.setAttribute("listtwo", listtwo);
		   session.setAttribute("ps", ps);
		   return "/Qiantai/pass";
	   }
}





