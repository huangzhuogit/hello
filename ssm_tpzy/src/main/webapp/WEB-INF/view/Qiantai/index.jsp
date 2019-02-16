<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <script src="../js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Metushi Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--webfont-->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
        rel='stylesheet' type='text/css'>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1200);
            });
        });
    </script>
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
    <style>
      .noShow {
        display: none
      }
    </style>
    <link href="../css/index.css" rel="stylesheet" type="text/css">
    <link href="../css/contect.css" rel="stylesheet" type="text/css">
    <link href="../css/detail.css" rel="stylesheet" type="text/css">
    <SCRIPT language=javascript src="../js/Designer.js"></SCRIPT>
    <SCRIPT language=javascript src="../js/Designerdef.js"></SCRIPT>
    <link href="../css/select.css" rel="stylesheet">
</head>


<body>
       
    <!-- header-section-starts -->
    <div class="header" id="header" style="  background: url(../images/公安教育资源网首页6.png) repeat;background-size:100%;">

    
        <div class="container">
            <div class="logo">
                <h1 style="color:#fff;padding-left:0;"><img style="height:55px;" src="../images/logo.png" alt=""></h1>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
    <section class="sec" style="  background: url(../images/公安教育资源网首页1.png) repeat;background-size:100%;">
        <div style="width:100%;" >
            <div style="width:100%;height:15px;"></div>
            <div>
                <div class="container" style=" background: url(../images/项目栏1.png) repeat;background-size:100%;border-radius: 5px;">
                    <div class="nav_content">
                        <table class="search" style="background:rgba(0, 0, 0, 0.603);border:none;" align="center" cellspacing="0" cellpadding="10" border="0" >
                            <tr>
                                <td style="position: relative;padding:0 0 0 10px;">
                                    <input id="text"  type="text" placeholder="搜 索" style="float:left;margin-top:8px;">
                                    <img id="checkField" type="button" src="../images/sprit-1.png" alt="" style="float:left;">
                                    <!-- <input type="button" value="Go"> -->
                                    <div id="word"></div>
                                </td>
                            </tr>
                        </table>
                        <div class="top-menu" style="color:#fff;">
                            <ul>
                                 <li><a style="color:#fff;" href="<%=basePath%>shouye/indexJsp">首页</a></li>
				                 <li><a style="color:#fff;" href="<%=basePath%>shouye/toprotet?id=1">刑事侦查</a></li>
				                 <li><a style="color:#fff;" href="<%=basePath%>shouye/topass?id=6">交通管理</a></li>
				                 <li><a style="color:#fff;" href="<%=basePath%>shouye/topublic?id=10">治安管理</a></li>
				                 <li><a style="color:#fff;" href="<%=basePath%>shouye/totip?id=14">警务战术</a></li>
				                 <li><a style="color:#fff;" href="<%=basePath%>shouye/totrain?id=18">反恐训练</a></li>
				                 <li><a style="color:#fff;" href="<%=basePath%>shouye/news">行业资讯</a></li>
				                 <li><a style="color:#fff;" href="<%=basePath%>shouye/contectus">关于网站</a></li>
                            </ul>
                        </div>
                        <!-- script for menu -->
                        <script>
                            $("span.menu").click(function () {
                                $(".top-menu").slideToggle("slow", function () {
                                    // Animation complete.
                                });
                            });
                        </script>
                        <!-- script for menu -->
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div style="width:100%;height:75px;"></div>
            <div>
                <div class="container">
                    <div id="v-side-nav" style="width:15%;background:rgba(255, 0, 0, 0);color:#fff;margin:0 ;padding:0">
                        <!-- <h3>浏览分类</h3> -->
                        <dl class="an" style="font-size:22px;color:#adadad;">
                            <dd class="an" style="font-weight: 200;">浏览分类</dd>
                            <a  href="#header" style="color:#adadad;font-weight: 200;"><dd class="an" style="margin-top:5px;">刑事侦查</dd></a>
                            <a href="#train" style="color:#adadad;"><dd class="an" style="margin-top:5px;font-weight: 200;">交通管理</dd></a>
                            <a href="#public" style="color:#adadad;"><dd class="an" style="margin-top:5px;font-weight: 200;">治安管理</dd></a>
                            <a href="#tip" style="color:#adadad;"><dd class="an" style="margin-top:5px;font-weight: 200;">警务战术</dd></a>
                            <a href="#pass" style="color:#adadad;"><dd class="an" style="margin-top:5px;font-weight: 200;">反恐训练</dd></a>
                        </dl>

                    </div>
                    <div id="right-content" style="padding: 15px;background:#000;">
                        <h3 style="color:#fff;">刑事侦查</h3>
                        <div style="margin-top:20px;">
                            <div class="d-img1">
                             <c:forEach items="${tlistone}" var="tone" begin="0" end="0"> 
                                <div class="det-img1 cndns-left-meau meau-sev">
                                        <a href="<%=basePath%>shouye/toprotet?id=${tone.id}" class="" >
                                    <img src="../hp_layui/img/${tone.img }" alt="" > </a>
                                    <div class="cndns-left-box" style="z-index:100;">
                                            <div class="box-border">
                                              <p style="line-height:20px;">${tone.name }</p>
                                              <p style="line-height:20px;">${tone.product }</p>
                                              <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tone.img }" alt="">
                                              <p style="line-height:20px;"><span style="color:rgb(180, 209, 253);">适用专业：</span><span style="color:#000;">${tone.type.tname }</span></p>
                                                <span class="arrow-left"></span>
                                            </div>
                                        </div>
                                </div>
                                </c:forEach>
                                <div class="det-img2">
                                 <c:forEach items="${tlistone}" var="tone" begin="1" end="1">
                                    <div class="detect-img1 cndns-left-meau meau-sev">
                                            <a href="<%=basePath%>shouye/toprotet?id=${tone.id}" class="" > <img src="../hp_layui/img/${tone.img }" alt="">
                                            </a>
                                            <div class="cndns-left-box" style="left:254px;z-index:100;">
                                                    <div class="box-border">
                                                      <p style="line-height:20px;">${tone.name }</p>
                                                      <p style="line-height:20px;">${tone.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tone.img }" alt="">
                                                       <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${tone.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                                    </div>
                                                </div>
                                        </div>
                                        </c:forEach>
                                           <c:forEach items="${tlistone}" var="tone" begin="2" end="2">
                                    <div class="detect-img2 cndns-left-meau meau-sev">
                                            <a href="<%=basePath%>shouye/toprotet?id=${tone.id}" class="" > <img src="../hp_layui/img/${tone.img }" alt=""></a>
                                            <div class="cndns-left-box" style="left:254px;z-index:100;">
                                                    <div class="box-border">
                                                      <p style="line-height:20px;">${tone.name }</p>
                                                      <p style="line-height:20px;">${tone.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../images/S4.jpg" alt="">
                                                       <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${tone.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                                    </div>
                                                </div>
                                        </div>
                                         </c:forEach>
                                </div>

                            </div>
                            <div class="d-img2 cndns-left-meau meau-sev">
                            <c:forEach items="${tlistone}" var="tone" begin="3" end="3"> 
                                    <a href="<%=basePath%>shouye/toprotet?id=${tone.id}" class="" > <img src="../hp_layui/img/${tone.img }" alt=""> </a>
                                    <div class="cndns-left-box" style="z-index:100;left:360px;">
                                            <div class="box-border">
                                              <p style="line-height:20px;">${tone.name }</p>
                                              <p style="line-height:20px;">${tone.product }</p>
                                              <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tone.img }" alt="">
                                               <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${tone.type.tname }</span></p>
                                               
                                                <span class="arrow-left"></span>
                                            </div>
                                        </div>
                                        </c:forEach>
                                </div>
                        </div>
                        <div style="margin-top:20px;">
                            <div class="d-img3">
                                <div class="detli-img1 cndns-left-meau meau-sev">
                                 <c:forEach items="${tlistone}" var="tone" begin="4" end="4">
                                        <a href="<%=basePath%>shouye/toprotet?id=${tone.id}" class="" >  <img src="../hp_layui/img/${tone.img }" alt=""> </a>
                                        <div class="cndns-left-box" style="z-index:100;left:264px;">
                                                <div class="box-border">
                                                  <p style="line-height:20px;">${tone.name }</p>
                                                  <p style="line-height:20px;">${tone.product }</p>
                                                  <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tone.img }" alt="">
                                                   <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${tone.type.tname }</span></p>
                                                   
                                                    <span class="arrow-left"></span>
                                                </div>
                                            </div>
                                            </c:forEach>
                                </div>
                                 <c:forEach items="${tlistone}" var="tone" begin="5" end="5"> 
                                <div class="detli-img2 cndns-left-meau meau-sev">
                                      <a href="<%=basePath%>shouye/toprotet?id=${tone.id}" class="" >  <img src="../hp_layui/img/${tone.img }" alt=""> </a>
                                        <div class="cndns-left-box" style="z-index:100;left:264px;">
                                                <div class="box-border">
                                                  <p style="line-height:20px;">${tone.name }</p>
                                                  <p style="line-height:20px;">${tone.product }</p>
                                                   <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tone.img }" alt="">
                                                   <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${tone.type.tname }</span></p>
                                                   
                                                    <span class="arrow-left"></span>
                                                </div>
                                            </div>
                                </div>
                                </c:forEach>

                            </div>
                            <c:forEach items="${tlistone}" var="tone" begin="6" end="6"> 
                            <div class="d-img4 cndns-left-meau meau-sev">
                                   <a href="<%=basePath%>shouye/toprotet?id=${tone.id}" class="" >  <img src="../hp_layui/img/${tone.img }" alt=""> </a>
                                    <div class="cndns-left-box" style="z-index:100; left:650px;">
                                            <div class="box-border">
                                                  <p style="line-height:20px;">${tone.name }</p>
                                                  <p style="line-height:20px;">${tone.product }</p>
                                                   <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tone.img }" alt="">
                                                   <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${tone.type.tname }</span></p>
                                                   
                                                    <span class="arrow-left"></span>
                                                </div>
                                        </div>
                                </div>
                              </c:forEach>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        </div>
        <div style="height:30px;width:100%;"></div>
        </div>
    </section>
    <section class="sec" id="train" style="  background: url(../images/公安教育资源网首页2.png) repeat;background-size:100%;">
        <div style="width:100%;">
            <div style="width:100%;height:30px;"></div>
           
            <div>
                <div class="container">
                    <div id="t-side-nav" style="width:15%;background:rgba(170, 43, 43, 0);color:#fff;margin:0 ;padding:0">
                    </div>
                    <div id="right-content" style="padding: 15px;background:#000;">
                        <h3 style="color:#fff;">交通管理</h3>
                        <div style="margin-top:20px;">
                            <div class="t-img1 cndns-left-meau meau-sev">
                           <c:forEach items="${tlisttwo}" var="tfive" begin="0" end="0"> 
                                    <a href="<%=basePath%>shouye/topass?id=${tfive.id}" class="" > <img src="../hp_layui/img/${tfive.img }" alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                               <p style="line-height:20px;">${tfive.name }</p>
                                               <p style="line-height:20px;">${tfive.product }</p>
                                              <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tfive.img }" alt="">
                                               <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${tfive.type.tname }</span></p>
                                               
                                                <span class="arrow-left"></span>
                                            </div>
                                        </div>
                             </c:forEach>
                            </div>
                            <div class="t-img2 cndns-left-meau meau-sev" >
                                   <c:forEach items="${tlisttwo}" var="tfive" begin="1" end="1"> 
                                   <a href="<%=basePath%>shouye/topass?id=${tfive.id}" class="" > <img src="../hp_layui/img/${tfive.img }" alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                           <div class="box-border">
                                               <p style="line-height:20px;">${tfive.name }</p>
                                               <p style="line-height:20px;">${tfive.product }</p>
                                              <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tfive.img }" alt="">
                                               <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${tfive.type.tname }</span></p>
                                               
                                                <span class="arrow-left"></span>
                                            </div>
                                        </div>
                                        </c:forEach>
                            </div>
                            <div class="t-img3 cndns-left-meau meau-sev" >
                                  <c:forEach items="${tlisttwo}" var="tfive" begin="2" end="2"> 
                                   <a href="<%=basePath%>shouye/topass?id=${tfive.id}" class="" > <img src="../hp_layui/img/${tfive.img }" alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                           <div class="box-border">
                                               <p style="line-height:20px;">${tfive.name }</p>
                                               <p style="line-height:20px;">${tfive.product }</p>
                                              <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tfive.img }" alt="">
                                               <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${tfive.type.tname }</span></p>
                                               
                                                <span class="arrow-left"></span>
                                            </div>
                                        </div>
                                        </c:forEach>
                            </div>
                            <div class="t-img1 cndns-left-meau meau-sev">
                                   <c:forEach items="${tlisttwo}" var="tfive" begin="3" end="3"> 
                                    <a href="<%=basePath%>shouye/topass?id=${tfive.id}" class="" > <img src="../hp_layui/img/${tfive.img }" alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                           <div class="box-border">
                                               <p style="line-height:20px;">${tfive.name }</p>
                                               <p style="line-height:20px;">${tfive.product }</p>
                                              <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tfive.img }" alt="">
                                               <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${tfive.type.tname }</span></p>
                                               
                                                <span class="arrow-left"></span>
                                            </div>
                                        </div>
                                        </c:forEach>
                            </div>
                            <div class="t-img2 cndns-left-meau meau-sev" >
                                      <c:forEach items="${tlisttwo}" var="tfive" begin="4" end="4"> 
                                   <a href="<%=basePath%>shouye/topass?id=${tfive.id}" class="" > <img src="../hp_layui/img/${tfive.img }" alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                           <div class="box-border">
                                               <p style="line-height:20px;">${tfive.name }</p>
                                               <p style="line-height:20px;">${tfive.product }</p>
                                              <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tfive.img }" alt="">
                                               <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${tfive.type.tname }</span></p>
                                               
                                                <span class="arrow-left"></span>
                                            </div>
                                        </div>
                                        </c:forEach>
                            </div>
                            <div class="t-img3 cndns-left-meau meau-sev" >
                                <c:forEach items="${tlisttwo}" var="tfive" begin="5" end="5"> 
                                    <a href="<%=basePath%>shouye/topass?id=${tfive.id}" class="" > <img src="../hp_layui/img/${tfive.img }" alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                           <div class="box-border">
                                               <p style="line-height:20px;">${tfive.name }</p>
                                               <p style="line-height:20px;">${tfive.product }</p>
                                              <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tfive.img }" alt="">
                                               <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${tfive.type.tname }</span></p>
                                               
                                                <span class="arrow-left"></span>
                                            </div>
                                        </div>
                                        </c:forEach>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div style="width:100%;height:30px;"></div>
        </div>
    </section>
     <section class="sec" id="public" style="  background: url(../images/首页背景3.png) repeat;background-size:100%;">
        <div style="width:100%;">
            <div style="width:100%;height:30px;"></div>
           
            <div>
                <div class="container">
                    <div id="n-side-nav" style="width:15%;background:rgba(170, 43, 43, 0);color:#fff;margin:0 ;padding:0">
                    </div>
                    <div  id="right-content" style="padding: 15px;background:#000;">
                        <h3 style="color:#fff;">治安管理</h3>
                        <div style="margin-top:20px;width:100%;height:200px;">
                            <div >
	
                                <ul class="h218px">
                            <table width="968" height="200" align="center" cellpadding="0" cellspacing="0" border="0">
                                <tr><th valign="top" >
                                        <div style="background:url(../images/箭头aa.png);height:90px;width:30px;margin-top:-20px;margin-left:-20px;">
                                    <img style="margin-top:30px;margin-left:0px;" src="../images/左箭头.svg" style="margin-left:20%;" class="pointer" id="arrLeft" border="0" />
                                    </div>
                                </th>
                                <td width="900" valign="top">
                                    <div id="scrollbox">
                                        <ul>
                                             <c:forEach items="${tlistthree}" var="tthree" begin="0" end="0">
                            <li>
                                    <a href="<%=basePath%>shouye/topublic?id=${tthree.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tthree.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tthree.name }</p>
                                                      <p style="line-height:20px;">${tthree.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tthree.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tthree.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                            <c:forEach items="${tlistthree}" var="tthree" begin="1" end="1">
                            <li>
                                    <a href="<%=basePath%>shouye/topublic?id=${tthree.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tthree.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tthree.name }</p>
                                                      <p style="line-height:20px;">${tthree.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tthree.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tthree.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                             <c:forEach items="${tlistthree}" var="tthree" begin="0" end="0">
                            <li>
                                    <a href="<%=basePath%>shouye/topublic?id=${tthree.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tthree.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tthree.name }</p>
                                                      <p style="line-height:20px;">${tthree.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tthree.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tthree.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                           <c:forEach items="${tlistthree}" var="tthree" begin="1" end="1">
                            <li>
                                    <a href="<%=basePath%>shouye/topublic?id=${tthree.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tthree.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tthree.name }</p>
                                                      <p style="line-height:20px;">${tthree.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tthree.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tthree.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                            <c:forEach items="${tlistthree}" var="tthree" begin="0" end="0">
                            <li>
                                    <a href="<%=basePath%>shouye/topublic?id=${tthree.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tthree.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tthree.name }</p>
                                                      <p style="line-height:20px;">${tthree.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tthree.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tthree.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                            <c:forEach items="${tlistthree}" var="tthree" begin="1" end="1">
                            <li>
                                    <a href="<%=basePath%>shouye/topublic?id=${tthree.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tthree.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tthree.name }</p>
                                                      <p style="line-height:20px;">${tthree.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tthree.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tthree.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                              
                               <c:forEach items="${tlistthree}" var="tthree" begin="0" end="0">
                            <li>
                                    <a href="<%=basePath%>shouye/topublic?id=${tthree.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tthree.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tthree.name }</p>
                                                      <p style="line-height:20px;">${tthree.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tthree.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tthree.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                                   <c:forEach items="${tlistthree}" var="tthree" begin="1" end="1">
                            <li>
                                    <a href="<%=basePath%>shouye/topublic?id=${tthree.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tthree.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tthree.name }</p>
                                                      <p style="line-height:20px;">${tthree.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tthree.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tthree.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                                  
                                   <c:forEach items="${tlistthree}" var="tthree" begin="0" end="0">
                            <li>
                                    <a href="<%=basePath%>shouye/topublic?id=${tthree.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tthree.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tthree.name }</p>
                                                      <p style="line-height:20px;">${tthree.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tthree.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tthree.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                            
                                                    </ul>
                                    </div>
                                </td>
                               
                                <th width="19" valign="top">
                                        <div style="background:url(../images/箭头1.png);height:90px;width:30px;margin-top:-20px;margin-left:10px;">
                                            <img style="margin-top:30px;margin-left:3px;" src="../images/右箭头.svg" class="pointer" id="arrRight" border="0" />
                                        </div>
                                    </th></tr>
                            </table>
                          
                               
                            </div>
                           
                        </div>

                    </div>
                </div>
            </div>
            <div style="width:100%;height:30px;"></div>
        </div>
    </section>
    <section class="sec" id="tip" style="  background: url(../images/公安教育资源网首页4.png) repeat;background-size:100%;">
        <div style="width:100%;">
            <div style="width:100%;height:30px;"></div>
           
            <div>
                <div class="container">
                    <div id="n-side-nav" style="width:15%;background:rgba(170, 43, 43, 0);color:#fff;margin:0 ;padding:0">
                    </div>
                    <div  id="right-content" style="padding: 15px;background:#000;">
                        <h3 style="color:#fff;">警务战术</h3>
                        <div style="margin-top:20px;width:100%;height:200px;">
                            <div >
	
                                <ul class="h218px">
                            <table width="968" height="200" align="center" cellpadding="0" cellspacing="0" border="0">
                                <tr><th valign="top" >
                                   <div style="background:url(../images/箭头aa.png);height:90px;width:30px;margin-top:-20px;margin-left:-20px;">
                                    <img style="margin-top:30px;margin-left:0px;" src="../images/左箭头.svg"  class="pointer" id="defarrLeft" border="0" /></div>
                                </th>
                                <td width="900" valign="top">
                                    <div id="defscrollbox">
                                    <ul>
                                    
                            <c:forEach items="${tlistfour}" var="tlistfour" begin="0" end="0"> 
                            <li>
                                    <a href="<%=basePath%>shouye/totip?id=${tlistfour.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tlistfour.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tlistfour.name }</p>
                                                      <p style="line-height:20px;">${tlistfour.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tlistfour.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tlistfour.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                            <c:forEach items="${tlistfour}" var="tlistfour" begin="1" end="1">
                            <li>
                                    <a href="<%=basePath%>shouye/totip?id=${tlistfour.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tlistfour.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tlistfour.name }</p>
                                                      <p style="line-height:20px;">${tlistfour.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tlistfour.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tlistfour.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                             <c:forEach items="${tlistfour}" var="tlistfour" begin="2" end="2">
                            <li>
                                    <a href="<%=basePath%>shouye/totip?id=${tlistfour.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tlistfour.img}"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tlistfour.name }</p>
                                                      <p style="line-height:20px;">${tlistfour.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tlistfour.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tlistfour.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                           <c:forEach items="${tlistfour}" var="tlistfour" begin="0" end="0">
                            <li>
                                    <a href="<%=basePath%>shouye/totip?id=${tlistfour.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tlistfour.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tlistfour.name }</p>
                                                      <p style="line-height:20px;">${tlistfour.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tlistfour.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tlistfour.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                            <c:forEach items="${tlistfour}" var="tlistfour" begin="1" end="1">
                            <li>
                                    <a href="<%=basePath%>shouye/totip?id=${tlistfour.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tlistfour.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tlistfour.name }</p>
                                                      <p style="line-height:20px;">${tlistfour.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tlistfour.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tlistfour.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                            <c:forEach items="${tlistfour}" var="tlistfour" begin="2" end="2">
                            <li>
                                    <a href="<%=basePath%>shouye/totip?id=${tlistfour.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tlistfour.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tlistfour.name }</p>
                                                      <p style="line-height:20px;">${tlistfour.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tlistfour.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tlistfour.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                              
                               <c:forEach items="${tlistfour}" var="tlistfour" begin="0" end="0">
                            <li>
                                    <a href="<%=basePath%>shouye/totip?id=${tlistfour.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tlistfour.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tlistfour.name }</p>
                                                      <p style="line-height:20px;">${tlistfour.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tlistfour.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tlistfour.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                                   <c:forEach items="${tlistfour}" var="tlistfour" begin="1" end="1">
                            <li>
                                    <a href="<%=basePath%>shouye/totip?id=${tlistfour.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tlistfour.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tlistfour.name }</p>
                                                      <p style="line-height:20px;">${tlistfour.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tlistfour.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tlistfour.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                                  
                                   <c:forEach items="${tlistfour}" var="tlistfour" begin="2" end="2">
                            <li>
                                    <a href="<%=basePath%>shouye/totip?id=${tlistfour.id}" class="cndns-left-meau meau-sev" >  <img src="../hp_layui/img/${tlistfour.img }"  alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                                      <p style="line-height:20px;">${tlistfour.name }</p>
                                                      <p style="line-height:20px;">${tlistfour.product }</p>
                                                      <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${tlistfour.img }" alt="">
                                                      <p style="line-height:20px;">适用专业：<span>${tlistfour.type.tname }</span></p>
                                                        <span class="arrow-left"></span>
                                               </div>
                                        </div>
                                   
                                </li>
                                  </c:forEach>
                                  
                                    </ul>
                                    </div>
                                </td>
                                <th width="19" valign="top">
                                        <div style="background:url(../images/箭头1.png);height:90px;width:30px;margin-top:-20px;margin-left:10px;">
                                    <img style="margin-top:30px;margin-left:3px;" src="../images/右箭头.svg" class="pointer" id="defarrRight" border="0" />
                                    </div>
                                </th></tr>
                            </table>
                          
                                </ul>
                            </div>
                           
                        </div>

                    </div>
                </div>
            </div>
            <div style="width:100%;height:30px;"></div>
        </div>
    </section>


    <section class="sec" id="pass" style="  background: url(../images/公安教育资源网首页5.png) repeat;background-size:100%;">
        <div style="width:100%;">
            <div style="width:100%;height:30px;"></div>
           
            <div>
                <div class="container">
                    <div id="l-side-nav" style="width:15%;background:rgba(170, 43, 43, 0);color:#fff;margin:0 ;padding:0">
                    </div>
                    <div  id="right-content" style="padding: 15px;background:#000;">
                        <h3 style="color:#fff;">反恐训练</h3>
                        <div style="margin-top:20px;">
                            <div class="t-img1 cndns-left-meau meau-sev">
                                <c:forEach items="${tlistfive}" var="ttwo" begin="0" end="0"> 
                                    <a href="<%=basePath%>shouye/totrain?id=${ttwo.id}" class="" >   <img src="../hp_layui/img/${ttwo.img }" alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                              <p style="line-height:20px;">${ttwo.name }</p>
                                              <p style="line-height:20px;">${ttwo.product }</p>
                                              <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${ttwo.img }" alt="">
                                               <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${ttwo.type.tname }</span></p>
                                               
                                                <span class="arrow-left"></span>
                                            </div>
                                        </div>
                                        </c:forEach>
                            </div>
                            <div class="t-img2 cndns-left-meau meau-sev" >
                                 <c:forEach items="${tlistfive}" var="ttwo" begin="0" end="0"> 
                                    <a href="<%=basePath%>shouye/totrain?id=${ttwo.id}" class="" >   <img src="../hp_layui/img/${ttwo.img }" alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                              <p style="line-height:20px;">${ttwo.name }</p>
                                              <p style="line-height:20px;">${ttwo.product }</p>
                                              <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${ttwo.img }" alt="">
                                               <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${ttwo.type.tname }</span></p>
                                               
                                                <span class="arrow-left"></span>
                                            </div>
                                        </div>
                                        </c:forEach>
                            </div>
                            <div class="t-img3 cndns-left-meau meau-sev" >
                                <c:forEach items="${tlistfive}" var="ttwo" begin="0" end="0">
                                     <a href="<%=basePath%>shouye/totrain?id=${ttwo.id}" class="" >   <img src="../hp_layui/img/${ttwo.img }" alt=""></a>
                                    <div class="cndns-left-box" style="z-index:100; left:295px;">
                                            <div class="box-border">
                                              <p style="line-height:20px;">${ttwo.name }</p>
                                              <p style="line-height:20px;">${ttwo.product }</p>
                                              <img style="margin:10px 0 15px 0;" src="../hp_layui/img/${ttwo.img }" alt="">
                                               <p style="line-height:20px;color:rgb(180, 209, 253);">适用专业：<span style="color:#000;">${ttwo.type.tname }</span></p>
                                               
                                                <span class="arrow-left"></span>
                                            </div>
                                        </div>
                                        </c:forEach>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div style="width:100%;height:80px;"></div>
        </div>
    </section>
 
    <section class="sec" style="  background: url(../images/公安教育资源网首页6.png) repeat;background-size:100%;">
        <div style="width:100%;background:black;height:140px;color:#fff;">
         
<div>

        <span>
            <a href="#header">
                <button style="margin-right:10px;float:right;background:black;border:none;padding: 15px 15px 0 0;font-size:16px;color:#fff;">返回顶部</button></a>
            </span>
            
                <div class="container" style="padding-top:20px;">
                    <div id="l-side-nav" style="width:15%;background:rgba(194, 93, 93, 0);color:#fff;margin:0 ;height:10px;">
                    </div>
                    <div  id="right-content" style="height:30px;font-size:16px;color:#fff;padding-top:10px;background:#000;">
                    
                                <center>  
                                    <a href="<%=basePath%>shouye/indexJsp" style="font-weight:100;color:rgb(180, 209, 253);">首页</a>&nbsp;|&nbsp;
                                    <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/toprotet?id=1">刑事勘查</a>&nbsp;
                                    <span style="color:#fff;">|</span>&nbsp;
                                    <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/topass?id=6">交通管理</a>&nbsp;|&nbsp;
                                    <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/topublic?id=10">治安管理</a>&nbsp;|&nbsp;
                                    <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/totip?id=14">警务战术</a>&nbsp;|&nbsp;
                                    <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/totrain?id=18">反恐训练</a>&nbsp;|&nbsp;
                                    <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/news">行业资讯</a>&nbsp;|&nbsp;
                                    <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/contectus">关于网站</a>&nbsp;|&nbsp;
                                    <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>user/loginJsp">后台管理</a>
                                </center>
                                
                     </div>
                      
                </div>
             
                <div class="container">
                        <div id="l-side-nav" style="width:15%;background:rgba(194, 93, 93, 0);color:#fff;margin:0 ;height:10px;">
                        </div>
                        <div id="right-content" style="height:60px;font-size:16px;color:#fff;background:#000;">
                        
                                    <center>
                                           
                                         
                                                    <img  src="../images/浙江通鹏智能科技有限公司_公司Logo.png" alt="" style="height:50px;margin-left:-29px;">
                                                    <span >浙江通鹏智能科技有限公司保留所有权利。</span>
                                                    <span>友情链接：</span>
                                                    <a href="http://www.tongpengvr.com/" style="color:#fff;">http://www.tongpengvr.com/</a>
                                               
                                    </center>
                         </div>
                          
                    </div>
                    <div class="container">
                            <div id="l-side-nav" style="width:15%;background:rgba(194, 93, 93,0);color:#fff;margin:0 ;height:10px;">
                            </div>
                            <div id="right-content" style="height:30px;font-size:16px;color:#fff;background:#000;">
                            
                                        <center style="margin-top:-20px;">
                                               
                                                <a href="#" style="color:#fff; margin-top:-35px ;">隐私政策</a>｜
                                                <a href="#" style="color:#fff; margin-top:-35px ;">法律信息</a>
                                        </center>
                             </div>
                              
                        </div>
                     
                      
        </div>
       
    </section>

 
       
    </div>
    <div class="cndns-right">
            <!-- <div class="cndns-right-meau meau-car">
                <a href="#" class="cndns-right-btn">
                    <span class="demo-icon">&#xe900;</span>
                    <sup>0</sup>
                </a>
            </div> -->
            <div class="cndns-right-meau meau-sev">
                <a href="javascript:" class="cndns-right-btn" style="border-radius: 5px;width:40px;height:40px;">
                    <span class="demo-icon"><img src="../images/电话.svg" alt=""></span>
                    <p>
                        客服<br />
                        热线
                    </p>
                </a>
                <div class="cndns-right-box">
                    <div class="box-border">
                        <div class="sev-t" >
                          <img src="../images/地址a.svg" alt="" style="float:left;margin-right:10px;width: 32px;">
                          <span style="float:left;">杭州市西湖区三墩镇紫宣路158号<br />杭州数字出版产业园13楼</span>
                            <div class="clear"></div>
                        </div>
                        <div class="sev-b" >
                                <img src="../images/电话a.svg" alt="" style="float:left;margin-right:10px;width: 32px;">
                                <span style="float:left;font-size:20px;margin-top:5px;">0571-89712590</span>
                                  <div class="clear"></div>
                              </div>
                              <div class="sev-b" >
                                    <img src="../images/手机a.svg" alt="" style="float:left;margin-right:10px;width: 32px;">
                                    <span style="float:left;font-size:20px;margin-top:5px;">13757163768</span>
                                      <div class="clear"></div>
                                  </div>
                                  <div class="sev-b">
                                        <img src="../images/网址a.svg" alt="" style="float:left;margin-right:10px;width: 32px;">
                                        <a href="http://www.tongpengvr.com/" style="float:left;font-size:12px;margin-top:7px;">http://www.tongpengvr.com/</a>
                                          <div class="clear"></div>
                                      </div>
                       
                        <span class="arrow-right"></span>
                    </div>
                </div>
            </div>
            <div class="cndns-right-meau meau-contact" >
                <a href="javascript:" class="cndns-right-btn" style="border-radius: 5px;width:40px;height:40px;">
                    <span class="demo-icon"><img src="../images/邮箱.svg" alt=""></span>
                    <p>
                        在线<br />
                       留言
                    </p>
                </a>
                <div class="cndns-right-box">
                    <div class="box-border">
                        <div class="sev-t">
                          <input id="messageNameAdd" placeholder="姓名" type="text" style="height:30px;width:190px;padding: 5px;">
                           <input id="messagePhoneAdd" placeholder="电话" type="text" style="height:30px;width:190px;padding: 5px;margin-top: 5px;">
                           <textarea id="messageMarkAdd" placeholder="留言" name="" id="" cols="30" rows="10" style="width:190px;padding: 5px;margin-top: 5px;"></textarea>
                           <button id="tijiao" style="margin-top:10px;width:190px;height:35px;padding:5px;border:none;border-radius:5px;background:rgb(68, 193, 243);">提交</button>
                           
                            <div class="clear"></div>
                        </div>
                        <span  class="arrow-right sub"></span>
                    </div>
                </div>
            </div>
            <div class="cndns-right-meau meau-contact" >
                <a href="javascript:" class="cndns-right-btn" style="border-radius: 5px;width:40px;height:40px;">
                    <span class="demo-icon"><img src="../images/二维码.svg" alt=""></span>
                    <p>
                        关注<br />
                        微信
                    </p>
                </a>
                <div class="cndns-right-box">
                    <div class="box-border">
                        <div class="sev-t">
                            <img style="width:210px;" src="..\images\微信公众号二维码.jpg" /><br>
                           
                            <i style="font-size:16px;margin-left:20%;">快来关注我们吧</i>
                        </div>
                        <span class="arrow-right"></span>
                    </div>
                </div>
            </div>
        </div>
        
        <script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="../select/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../select/js/chosen.jquery.js"></script>
<script type="text/javascript">
	$('.form-control-chosen').chosen({
	  allow_single_deselect: true,
	  width: '100%'
	});
	$('.form-control-chosen-required').chosen({
	  allow_single_deselect: false,
	  width: '100%'
	});
	$('.form-control-chosen-search-threshold-100').chosen({
	  allow_single_deselect: true,
	  disable_search_threshold: 100,
	  width: '100%'
	});
	$('.form-control-chosen-optgroup').chosen({
	  width: '100%'
	});

	$(function() {
	  $('[title="clickable_optgroup"]').addClass('chosen-container-optgroup-clickable');
	});
	$(document).on('click', '[title="clickable_optgroup"] .group-result', function() {
	  var unselected = $(this).nextUntil('.group-result').not('.result-selected');
	  if(unselected.length) {
		unselected.trigger('mouseup');
	  } else {
		$(this).nextUntil('.group-result').each(function() {
		  $('a.search-choice-close[data-option-array-index="' + $(this).data('option-array-index') + '"]').trigger('click');
		});
	  }
	});
</script>
        <script type="text/javascript">
        //置顶图标显示
        $('#top-back').hide()
        $(window).scroll(function(){
             if($(this).scrollTop() > 350){
                $("#top-back").fadeIn();
             }
             else{
                $("#top-back").fadeOut();
             }
          })	
        //置顶事件
        function topBack(){
          $('body,html').animate({scrollTop:0},300);
        }
        </script>
        
       
    <SCRIPT language=javascript type=text/javascript>
		var scrollPic_02 = new ScrollPic();
		scrollPic_02.scrollContId   = "scrollbox"; //内容容器ID
		scrollPic_02.arrLeftId      = "arrLeft";//左箭头ID
		scrollPic_02.arrRightId     = "arrRight"; //右箭头ID
		scrollPic_02.frameWidth     = 900;//显示框宽度
		scrollPic_02.pageWidth      = 900; //翻页宽度
		scrollPic_02.speed          = 8; //移动速度(单位毫秒，越小越快)
		scrollPic_02.space          = 8; //每次移动像素(单位px，越大越快)
		scrollPic_02.autoPlay       = false; //自动播放
		scrollPic_02.autoPlayTime   = 3; //自动播放间隔时间(秒)
        scrollPic_02.initialize(); //初始化
      
</SCRIPT>
 <SCRIPT language=javascript type=text/javascript>
    var scrollPic_03 = new ScrollPicdef();
    scrollPic_03.defscrollContId   = "defscrollbox"; //内容容器ID
    scrollPic_03.defarrLeftId      = "defarrLeft";//左箭头ID
    scrollPic_03.defarrRightId     = "defarrRight"; //右箭头ID
    scrollPic_03.defframeWidth     = 900;//显示框宽度
    scrollPic_03.defpageWidth      = 900; //翻页宽度
    scrollPic_03.defspeed          = 8; //移动速度(单位毫秒，越小越快)
    scrollPic_03.defspace          = 8; //每次移动像素(单位px，越大越快)
    scrollPic_03.defautoPlay       = false; //自动播放
    scrollPic_03.defautoPlayTime   = 3; //自动播放间隔时间(秒)
    scrollPic_03.initialize(); //初始化
  
</SCRIPT>
<script>
        // var showDiv = document.getElementById('demo')
        function handleImg(event) {
          var oEvent = event;
          var oDiv = document.getElementById('hidden-demo');
          oDiv.classList.remove("noShow");
          var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
          var scrollLeft = document.documentElement.scrollLeft || document.body.scrollLeft;
          var X = oEvent.clientX + scrollLeft + 'px'
          var Y = $('#demo').offset().left;
          oDiv.style.left = oEvent.clientX + scrollLeft + 10 + 'px';
          oDiv.style.top = oEvent.clientY + scrollTop + 10 + 'px';
          oDiv.style.zIndex = 77;
          console.log(X, 'x')
        }
    
        function resetImg(event) {
          console.log(event)
          var oDiv = document.getElementById('hidden-demo');
          oDiv.setAttribute("class", "noShow");
        }
      </script>
 
<!--  <script type="text/javascript" src="../select/public/jquery.js"></script> -->
 <!-- <script type="text/javascript" src="../select/public/JsonpAjax.js"></script> -->
 
 
 <script type="text/javascript">
    $("#tijiao").click(function(){
    	  debugger;
    	  $.ajax({
    	    	 type:'post',
    	    	 dataType:'json',
    	    	 url:'<%=basePath%>mess/addByUser',
    	    	 data:{
    	    		'messageName':$("#messageNameAdd").val(),
    			    'messagePhone':$("#messagePhoneAdd").val(),
    			    'messageMark':$("#messageMarkAdd").val(),
    			    'is_delete':1,
    	    	 },
    	    	 dataType:'json',
    	    	 success:function(data){
    	    		 var mes=data.mes;
    	    		 if(mes=="success"){
    	    			 alert("留言成功");
    	    			 $("#messageNameAdd").val("");
    	    			 $("#messagePhoneAdd").val("");
    	    			 $("#messageMarkAdd").val("");
          		 }else if(mes=="fail"){
          			     alert("留言失败");
    	    			 $(".layui-layer-btn1").click();
    	    			 layer.close();
          		 } 
    	    		
    	    	 } 
    	     })
    	  	return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
    })
    
    
     $("#checkField").click(function(){
    	$.ajax({
	    	 type:'post',
	    	 url:'<%=basePath%>shouye/checkField',
	    	 data:{
	    		 'mohu':$("#text").val(),
	    		 'is_delete':1
	    	 },
	    	 dataType:'json',
	    	 success:function(data){
	    		 var mes=data.mes;
	    		 if(mes=="one"){
	    	window.location.href="<%=basePath%>shouye/toprotet?id=1"
      		 }else if(mes=="two"){
      		window.location.href="<%=basePath%>shouye/topass?id=6"	 
      		 }else if(mes=="three"){
      		window.location.href="<%=basePath%>shouye/topublic?id=10"	 
      		 }else if(mes=="four"){
      		window.location.href="<%=basePath%>shouye/totip?id=14"	 
      		 }else if(mes=="five"){
      		window.location.href="<%=basePath%>shouye/totrain?id=18"	 
      		 }else if(mes=="fail"){
      			 layer.msg("没有该产品");
      		 } 
	    		
	    	 }
	     })
    })
   
   </script>
</body>

</html>