<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <title>Home</title>
  <link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
  <!-- Custom Theme files -->
  <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
  <!-- Custom Theme files -->
  <script src="../js/jquery.min.js"></script>
  <!-- Custom Theme files -->
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Metushi Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
  <script type="application/x-javascript">
    addEventListener("load", function () {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
  <!--webfont-->
  <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
    rel='stylesheet' type='text/css'>
  <script type="text/javascript">
    jQuery(document).ready(function ($) {
      $(".scroll").click(function (event) {
        event.preventDefault();
        $('html,body').animate({
          scrollTop: $(this.hash).offset().top
        }, 1200);
      });
    });
  </script>
  <link href="../css/index.css" rel="stylesheet" type="text/css">
  <link href="../css/contect.css" rel="stylesheet" type="text/css">
  <link href="../css/detail.css" rel="stylesheet" type="text/css">
  <SCRIPT language=javascript src="../js/Designer.js"></SCRIPT>
  <SCRIPT language=javascript src="../js/Designerdef.js"></SCRIPT>
  <link rel="stylesheet" type="text/css" href="../css/default.css">
  <link href="http://fonts.useso.com/css?family=Open+Sans:400,700,600" rel="stylesheet" type="text/css">
  <link href="http://libs.useso.com/js/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  <link href="../css/app.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="../scroll/style.css">
  <style type="text/css">
    *{margin:0;padding:0;list-style-type:none;}
      img { max-width: 100%;}
    </style>
    
    <link rel="stylesheet" type="text/css" href="../bottom-scroll/css/style.css">
    
    <script type="text/javascript" src="../bottom-scroll/js/jquery1.7.min.js"></script>
    <script type="text/javascript" src="../bottom-scroll/js/scroll.1.3.js"></script>、
      
    <link rel="stylesheet" href="../tpmo_522_venue/css/owl-carousel.css">
    <link rel="stylesheet" href="../tpmo_522_venue/css/templatemo-style.css">
    <link href="../css/select.css" rel="stylesheet">
</head>

<body>
  <!-- header-section-starts -->
  <div class="header" id="header" style=" background: url(../images/公安教育资源网首页6.png) repeat;background-size:100%;">
    <div class="container">
      <div class="logo">
       <img style="height:55px;" src="../images/logo.png" alt="">
    </div>
      <div class="clearfix"></div>
    </div>
  </div>
  <section class="sec" style="  background: url(../images/子页面1.png) repeat;background-size:100%;">
    <div style="width:100%;">
      <div style="width:100%;height:15px; "></div>

      <div class="container" style=" background: url(../images/项目栏1.png) repeat;background-size:100%;border-radius: 5px;">
        <div class="nav_content">

          <table class="search" style="background:rgba(0, 0, 0, 0.603);border:none;" align="center" cellspacing="0" cellpadding="10" border="0" >
            <tr>
                <td style="position: relative;padding:0 0 0 10px;">
                    <input id="text" type="text" placeholder="搜 索" style="float:left;margin-top:8px;">
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
        </div>
      </div>
    </div>
    <div class="container" style="line-height:40px;font-size:12px;color:#fff;">
      <p>
        <a href="<%=basePath%>shouye/indexJsp" style="color:#fff;"><span>首页</span></a>>
        <a href="#" style="color:#fff;"><span>交通管理</span></a>>
        <a href="#" style="color:#fff;"><span>${ps.name}</span></a>
      </p>

      <h4 style="line-height:50px;color: rgb(184, 184,184);">${ps.name}</h4>
    </div>
    <div style="width:100%;">

      <div class="tcontainer" style="line-height:40px;font-size:12px;color:#fff;position:relative;left:-105px;">
        <div style="width:210px;padding: 5px;font-size:14px; z-index:999;float:left;display:block">


          <ul id="leftNavigation" style="margin-top:-5px;">

            <li>
              <a href="#" style="color:rgb(184, 184,184);font-size:16px;border:none;"><i class="fa fa-coffee leftNavIcon" style="color:#fff;font-size:16px;"></i>刑事勘查</a>
              <ul>
                  <c:forEach items="${tlistone }" var="tone" begin="0" end="6">
                  <a style="color: rgb(180, 209, 253);" target="_blank" href="<%=basePath%>shouye/toprotet?id=${tone.id}">${tone.name }</a>
                    </c:forEach>
              </ul>
            </li>
            <li  class="active">
              <a href="#" style="color:rgb(184, 184,184);font-size:16px;"><i class="fa fa-flask leftNavIcon" style="color:#fff;font-size:16px;"></i> 交通管理</a>
              <ul>
                <li>
                 <c:forEach items="${listtwo }" var="ttwo" begin="0" end="5">
                  <a target="_blank" style="color: rgb(180, 209, 253);" href="<%=basePath%>shouye/topass?id=${ttwo.id}"><i class="fa fa-angle-right leftNavIcon"></i>${ttwo.name }</a>
                 </c:forEach>
                </li>
              </ul>
            </li>
            <li>
              <a href="#" style="color:rgb(184, 184,184);font-size:16px;"><i class="fa fa-flask leftNavIcon" style="color:#fff;font-size:16px;"></i>治安管理</a>
              <ul>
                 <c:forEach items="${tlistthree }" var="tone" begin="0" end="1">
                  <a style="color: rgb(180, 209, 253);" target="_blank" href="<%=basePath%>shouye/topublic?id=${tone.id}">${tone.name }</a>
                    </c:forEach>
              </ul>
            </li>
            <li>
              <a href="#" style="color:rgb(184, 184,184);font-size:16px;"><i class="fa fa-flask leftNavIcon" style="color:#fff;font-size:16px;"></i> 警务战术</a>
              <ul>
               <c:forEach items="${tlistfour }" var="tone" begin="0" end="2">
                  <a style="color: rgb(180, 209, 253);" target="_blank" href="<%=basePath%>shouye/totip?id=${tone.id}">${tone.name }</a>
                    </c:forEach>
              </ul>
            </li>
            <li>
              <a href="#" style="color:rgb(184, 184,184);font-size:16px;">反恐训练</a>
              <ul>
               <c:forEach items="${tlistfive }" var="tone" begin="0" end="0">
                  <a style="color: rgb(180, 209, 253);" target="_blank" href="<%=basePath%>shouye/totrain?id=${tone.id}">${tone.name }</a>
                    </c:forEach>
              </ul>
            </li>

            <li>
              <a href="#" style="color:rgb(184, 184,184);font-size:16px;"></i>最近浏览</a>
              <ul>
              
              </ul>
            </li>
          </ul>

        </div>
        <div class="container" style="position:relative;left:105px;background:rgb(67, 67, 94);">
          <div style="    width:766.35px;height:530px;float:left;margin-left:-105px;">
            <div class="egames-video-area">
              <div style="width:766.35px;height:530px;">
                <div>
                  <div>
                    <div class="tab-content">
                      <div class="tab-pane  active" id="video-1">
                        <div class="video-playground bg-img" >
                          <!-- Play Button -->
                          <div class="play-btn">
                           <video src="../hp_layui/movie/${ps.tvideo}" controls="controls" style="width:765px;"></video>
                          </div>
                        </div>
                      </div>
                      <div class="tab-pane" id="video-2">
                        <c:forEach items="${listtwo}" var="tone" begin="1" end="1">
                        <div class="video-playground bg-img" style="background-image: url(../hp_layui/img/${tone.img});">
                          <!-- Play Button -->

                        </div>
                         </c:forEach>
                      </div>
                      <div class="tab-pane " id="video-3">
                        <c:forEach items="${listtwo}" var="tone" begin="2" end="2">
                        <div class="video-playground bg-img" style="background-image: url(../hp_layui/img/${tone.img});">
                          <!-- Play Button -->

                        </div>
                         </c:forEach>
                      </div>
                      <div class="tab-pane " id="video-4">
                        <c:forEach items="${listtwo}" var="tone" begin="3" end="3">
                        <div class="video-playground bg-img" style="background-image: url(../hp_layui/img/${tone.img});">
                          <!-- Play Button -->

                        </div>
                         </c:forEach>
                      </div>
                      <div class="tab-pane " id="video-5">
                        <c:forEach items="${listtwo}" var="tone" begin="4" end="4">
                        <div class="video-playground bg-img" style="background-image: url(../hp_layui/img/${tone.img});">
                          <!-- Play Button -->

                        </div>
                         </c:forEach>
                      </div>

                    </div>
                  </div>
                  <div class="nav " id="video-tab" role="tablist" aria-orientation="vertical">
                    <a class="nav-link active" id="video1" data-toggle="pill" href="#video-1" role="tab" aria-controls="video-1"
                      aria-selected="true" style="width:20%;float:left;">
                      <div class="single-video-widget d-flex wow fadeInUp" data-wow-delay="100ms">
                        <div class="video-thumbnail">
                          <img style="height: 90px; width: 300px" src="../hp_layui/img/${ps.img}" alt="">
                        </div>

                      </div>
                    </a>

                    <a class="nav-link" id="video2" data-toggle="pill" href="#video-2" role="tab" aria-controls="video-2"
                      aria-selected="false" style="width:20%;float:left;">
                      <div class="single-video-widget d-flex wow fadeInUp" data-wow-delay="200ms">
                        <div class="video-thumbnail">
                           <c:forEach items="${listtwo}" var="tone" begin="1" end="1">
                          <img style="height: 90px; width: 300px" src="../hp_layui/img/${tone.img}" alt="">
                          </c:forEach>
                        </div>

                      </div>
                    </a>

                    <a class="nav-link" id="video3" data-toggle="pill" href="#video-3" role="tab" aria-controls="video-3"
                      aria-selected="false" style="width:20%;float:left;">
                      <div class="single-video-widget d-flex wow fadeInUp" data-wow-delay="300ms">
                        <div class="video-thumbnail">
                          <c:forEach items="${listtwo}" var="tone" begin="2" end="2">
                          <img style="height: 90px; width: 300px" src="../hp_layui/img/${tone.img}" alt="">
                          </c:forEach>
                        </div>

                      </div>
                    </a>

                    <a class="nav-link" id="video4" data-toggle="pill" href="#video-4" role="tab" aria-controls="video-4"
                      aria-selected="false" style="width:20%;float:left;">
                      <div class="single-video-widget d-flex wow fadeInUp" data-wow-delay="400ms">
                        <div class="video-thumbnail">
                          <c:forEach items="${listtwo}" var="tone" begin="3" end="3">
                          <img style="height: 90px; width: 300px" src="../hp_layui/img/${tone.img}" alt="">
                          </c:forEach>
                        </div>

                      </div>
                    </a>

                    <a class="nav-link" id="video5" data-toggle="pill" href="#video-5" role="tab" aria-controls="video-5"
                      aria-selected="false" style="width:20%;float:left;">
                      <div class="single-video-widget d-flex wow fadeInUp" data-wow-delay="500ms">
                        <div class="video-thumbnail">
                            <c:forEach items="${listtwo}" var="tone" begin="4" end="4">
                          <img style="height: 90px; width: 300px" src="../hp_layui/img/${tone.img}" alt="">
                          </c:forEach>
                        </div>

                      </div>
                    </a>




                  </div>

                </div>
              </div>
            </div>

          </div>
          <div style="width:32.5%;height:530px;float:left;margin-left:2%;word-wrap:break-word;line-height: 25px;
          word-break:break-all;white-space:normal;overflow:hidden;" >
            <img src="../hp_layui/img/${ps.img }" alt="" style="width:400px; height: 200px;" />
          <div style="color:rgb(184, 184, 184);">
            <p style="color:rgb(180, 209, 253);margin-top:5px;">产品简介：</p>
         <p style="text-indent:2em;">${ps.product}</p>
        </div>
        <div style="margin-top:5px;">
          <p style="color:rgb(180, 209, 253);">适用领域：</p>
          <p style="color:rgb(184, 184, 184);text-indent:2em;">${ps.territory }</p>
         </div>
           </div>


        </div>

      </div>

    </div>
    </div>
  </section>
  <section class="sec" style="  background: url(../images/子页面2.png) repeat;background-size:100%;">
    <div style="width:100%;">
      <div class="container" style="font-size:14px;color:#cfcfcf;padding: 10px;">
        <div>
          <h4 style="color:rgb(180, 209, 253);">内容描述</h4>
        <img style="margin:5px  0 20px 0;" src="../images/maincol_gradient_rule.png" alt="">
        <div style="width:95%;margin-left:-1px;">
          <p style="line-height:25px;margin:-15px 10px 10px 10px;text-indent:2em;color:rgb(184, 184, 184)">${ps.mark}</p>
          
          </div>
        </div>
      </div>

    </div>
    </div>
  </section>
  <section class="sec" style="  background: url(../images/子页面3.png) repeat;background-size:100%;">
    <div style="width:100%;">
      <div class="container" style="line-height:40px;font-size:14px;color:#cfcfcf;padding: 10px;">
        <div>
          <h4 style="margin-top:40px;color:rgb(180, 209, 253);">更多类似软件</h4>
          <img style="margin:5px  0 20px 0;" src="../images/maincol_gradient_rule.png" alt="">
          
             
          <div class="owl-carousel popular-places">
            <div class=" popular-item">
               <c:forEach items="${listtwo}" var="tone" begin="0" end="0">
              <a href="<%=basePath%>shouye/topass?id=${tone.id}">
                <div class="thumb"  >
                    <img src="../hp_layui/img/${tone.img}" alt="" style="border:2px solid rgb(76, 78, 109);height: 240px;">
                    <div class="text-content" style="height:30px;">
                      <center>
                        <h5 style="height:30px;line-height:30px;">${tone.name}</h5>
                      </center>
                       
                    </div>
                    <div class="plus-button">
                        <a href="#"></a>
                    </div>
                </div></a>
                </c:forEach>
            </div>
            <div class=" popular-item">
                <c:forEach items="${listtwo}" var="tone" begin="1" end="1">
              <a href="<%=basePath%>shouye/topass?id=${tone.id}">
                <div class="thumb"  >
                    <img src="../hp_layui/img/${tone.img}" alt="" style="border:2px solid rgb(76, 78, 109);height: 240px;">
                    <div class="text-content" style="height:30px;">
                      <center>
                        <h5 style="height:30px;line-height:30px;">${tone.name}</h5>
                      </center>
                       
                    </div>
                    <div class="plus-button">
                        <a href="#"></a>
                    </div>
                </div></a>
                </c:forEach>
              </div>
              <div class=" popular-item">
                 <c:forEach items="${listtwo}" var="tone" begin="2" end="2">
              <a href="<%=basePath%>shouye/topass?id=${tone.id}">
                <div class="thumb"  >
                    <img src="../hp_layui/img/${tone.img}" alt="" style="border:2px solid rgb(76, 78, 109); height: 240px;">
                    <div class="text-content" style="height:30px;">
                      <center>
                        <h5 style="height:30px;line-height:30px;">${tone.name}</h5>
                      </center>
                       
                    </div>
                    <div class="plus-button">
                        <a href="#"></a>
                    </div>
                </div></a>
                </c:forEach>
                </div>
                <div class=" popular-item">
                   <c:forEach items="${listtwo}" var="tone" begin="3" end="3">
              <a href="<%=basePath%>shouye/topass?id=${tone.id}">
                <div class="thumb"  >
                    <img src="../hp_layui/img/${tone.img}" alt="" style="border:2px solid rgb(76, 78, 109);height: 240px;">
                    <div class="text-content" style="height:30px;">
                      <center>
                        <h5 style="height:30px;line-height:30px;">${tone.name}</h5>
                      </center>
                       
                    </div>
                    <div class="plus-button">
                        <a href="#"></a>
                    </div>
                </div></a>
                </c:forEach>
                  </div>
                  <div class=" popular-item">
               <c:forEach items="${listtwo}" var="tone" begin="4" end="4">
               <a href="<%=basePath%>shouye/topass?id=${tone.id}">
                <div class="thumb"  >
                    <img src="../hp_layui/img/${tone.img}" alt="" style="border:2px solid rgb(76, 78, 109);height: 240px;">
                    <div class="text-content" style="height:30px;">
                      <center>
                        <h5 style="height:30px;line-height:30px;">${tone.name}</h5>
                      </center>
                       
                    </div>
                    <div class="plus-button">
                        <a href="#"></a>
                    </div>
                </div></a>
                </c:forEach>
                    </div>
                    <div class=" popular-item">
                        <c:forEach items="${listtwo}" var="tone" begin="5" end="5">
              <a href="<%=basePath%>shouye/topass?id=${tone.id}">
                <div class="thumb"  >
                    <img src="../hp_layui/img/${tone.img}" alt="" style="border:2px solid rgb(76, 78, 109);height: 240px;">
                    <div class="text-content" style="height:30px;">
                      <center>
                        <h5 style="height:30px;line-height:30px;">${tone.name}</h5>
                      </center>
                       
                    </div>
                    <div class="plus-button">
                        <a href="#"></a>
                    </div>
                </div></a>
                </c:forEach>
                      </div>
                      <div class=" popular-item">
                          <c:forEach items="${listone}" var="tone" begin="0" end="0">
              <a href="<%=basePath%>shouye/topass?id=${tone.id}">
                <div class="thumb"  >
                    <img src="../hp_layui/img/${tone.img}" alt="" style="border:2px solid rgb(76, 78, 109);height: 240px;">
                    <div class="text-content" style="height:30px;">
                      <center>
                        <h5 style="height:30px;line-height:30px;">${tone.name}</h5>
                      </center>
                       
                    </div>
                    <div class="plus-button">
                        <a href="#"></a>
                    </div>
                </div></a>
                </c:forEach>
                        </div>
                        <div class=" popular-item">
                             <c:forEach items="${listone}" var="tone" begin="1" end="1">
              <a href="<%=basePath%>shouye/topass?id=${tone.id}">
                <div class="thumb"  >
                    <img src="../hp_layui/img/${tone.img}" alt="" style="border:2px solid rgb(76, 78, 109);height: 240px;">
                    <div class="text-content" style="height:30px;">
                      <center>
                        <h5 style="height:30px;line-height:30px;">${tone.name}</h5>
                      </center>
                       
                    </div>
                    <div class="plus-button">
                        <a href="#"></a>
                    </div>
                </div></a>
                </c:forEach>
                          </div>
                          <div class=" popular-item">
               <c:forEach items="${listone}" var="tone" begin="2" end="2">
              <a href="<%=basePath%>shouye/topass?id=${tone.id}">
                <div class="thumb"  >
                    <img src="../hp_layui/img/${tone.img}" alt="" style="border:2px solid rgb(76, 78, 109);height: 240px;">
                    <div class="text-content" style="height:30px;">
                      <center>
                        <h5 style="height:30px;line-height:30px;">${tone.name}</h5>
                      </center>
                       
                    </div>
                    <div class="plus-button">
                        <a href="#"></a>
                    </div>
                </div></a>
                </c:forEach>
                            </div>
                            <div class=" popular-item">
         <c:forEach items="${listone}" var="tone" begin="3" end="3">
              <a href="<%=basePath%>shouye/topass?id=${tone.id}">
                <div class="thumb"  >
                    <img src="../hp_layui/img/${tone.img}" alt="" style="border:2px solid rgb(76, 78, 109);height: 240px;">
                    <div class="text-content" style="height:30px;">
                      <center>
                        <h5 style="height:30px;line-height:30px;">${tone.name}</h5>
                      </center>
                       
                    </div>
                    <div class="plus-button">
                        <a href="#"></a>
                    </div>
                </div></a>
                </c:forEach>
                     </div>
            
            
           
           
        </div>
        </div>
      </div>

    </div>
    </div>
  </section>


  <section class="sec">
    <div style="width:100%;background:black;height:140px;color:#fff;">
      <div>
        <span>
          <a href="#header">
            <button style="margin-right:10px;float:right;background:black;border:none;padding: 15px 15px 0 0;font-size:16px;color:#fff;">返回顶部</button></a>
        </span>
        <div class="container" style="padding-top:20px;">
          <div id="l-side-nav" style="width:6%;background:rgba(194, 93, 93, 0);color:#fff;margin:0 ;height:10px;">
          </div>
          <div class="bk" id="right-content" style="height:30px;font-size:16px;color:#fff;padding-top:10px;">
           <center>  
                 <a href="<%=basePath%>shouye/indexJsp" style="font-weight:100;color:rgb(180, 209, 253);">首页</a>&nbsp;|&nbsp;
                 <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/toprotet?id=1">刑事勘查</a>&nbsp;
                 <span style="color:#fff;">|</span>&nbsp;
                 <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/topass?id=6">交通管理</a>&nbsp;|&nbsp;
                 <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/topublic?id=10">治安管理</a>&nbsp;|&nbsp;
                 <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/totip?id=14">警务战术</a>&nbsp;|&nbsp;
                 <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/totrain?id=18">治安管理</a>&nbsp;|&nbsp;
                 <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/news">行业资讯</a>&nbsp;|&nbsp;
                 <a style="font-weight:100;color:rgb(180, 209, 253);" href="<%=basePath%>shouye/contectus">关于网站</a>
             </center>
          </div>
        </div>
        <div class="container">
          <div id="l-side-nav" style="width:6%;background:rgba(194, 93, 93, 0);color:#fff;margin:0 ;height:10px;">
          </div>
          <div class="bk" id="right-content" style="height:60px;font-size:16px;color:#fff;">
            <center>
              <img src="../images/浙江通鹏智能科技有限公司_公司Logo.png" alt="" style="height:50px;margin-left:-29px;">
              <span>浙江通鹏智能科技有限公司保留所有权利。</span>
              <span>友情链</span><span>接：</span>
              <a href="http://www.tongpengvr.com/" style="color:#fff;">http://www.tongpengvr.com/</a>
            </center>
          </div>
        </div>
        <div class="container">
          <div id="l-side-nav" style="width:6%;background:rgba(194, 93, 93,0);color:#fff;margin:0 ;height:10px;">
          </div>
          <div class="bk" id="right-content" style="height:30px;font-size:16px;color:#fff;">
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
          <div class="sev-t">
            <img src="../images/地址a.svg" alt="" style="float:left;margin-right:10px;width: 32px;">
            <span style="float:left;">杭州市西湖区三墩镇紫宣路158号<br />杭州数字出版产业园13楼</span>
            <div class="clear"></div>
          </div>
          <div class="sev-b">
            <img src="../images/电话a.svg" alt="" style="float:left;margin-right:10px;width: 32px;">
            <span style="float:left;font-size:20px;margin-top:5px;">0571-89712590</span>
            <div class="clear"></div>
          </div>
          <div class="sev-b">
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
    <div class="cndns-right-meau meau-contact">
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
          <span class="arrow-right sub"></span>
        </div>
      </div>
    </div>
    <div class="cndns-right-meau meau-contact">
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
  <script type="text/javascript">
    $(document).ready(function(){
    
      $("#count1").dayuwscroll({
        parent_ele:'#wrapBox1',
        list_btn:'#tabT04',
        pre_btn:'#left1',
        next_btn:'#right1',
        path: 'left',
        auto:true,
        time:1000,
        num:5,
        gd_num:5,
        waite_time:1000
      });
    
    });
    </script>

  <script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
  <script src="../js/jquery-2.1.1.min.js" type="text/javascript"></script>
  <script src="../js/jquery.ssd-vertical-navigation.min.js"></script>
  <script src="../js/app.js"></script>
  <script src="../scroll/js/bootstrap/popper.min.js"></script>
  <script src="../scroll/js/bootstrap/bootstrap.min.js"></script>
  <script src="../scroll/js/plugins/plugins.js"></script>
  <script src="../scroll/js/active.js"></script>
  <script>window.jQuery || document.write('<script src="../js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
  <script src="../tpmo_522_venue/js/plugins.js"></script>
  <script src="../tpmo_522_venue/js/main.js"></script>
 <!--  <script type="text/javascript" src="../select/public/jquery.js"></script> -->
  <script type="text/javascript" src="../select/public/JsonpAjax.js"></script>
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