<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ResourceBundle resource = ResourceBundle.getBundle("qiNiu");%>
<c:set var="context_path" value="<%=basePath%>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=basePath%>hp_layui/lib/layui/css/layui.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>hp_layui/css/hp-layui.css" />
<link rel="shortcut icon" href="favicon.ico" />
<style type="text/css">
.demo-carousel{
	height: 573px;
}
</style>
</head>
<body class="layui-layout-body hp-white-theme">
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header">
				<div class="layui-logo">
					通鹏公安资源网后台
				</div>
				<!-- 头部区域（可配合layui已有的水平导航） -->
			
				<ul class="layui-nav layui-layout-right">
					<li class="layui-nav-item">
						<a class="name" href="javascript:;"><i class="layui-icon"></i>主题<span class="layui-nav-more"></span></a>
						<dl class="layui-nav-child layui-anim layui-anim-upbit">
							<dd>
								<a skin="hp-black-theme" class="hp-theme-skin-switch"  href="javascript:;">低调黑</a>
							</dd>
							<dd >
								<a skin="hp-blue-theme" class="hp-theme-skin-switch" href="javascript:;">炫酷蓝</a>
							</dd>
							<dd>
								<a skin="hp-green-theme" class="hp-theme-skin-switch"  href="javascript:;">原谅绿</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="<%=basePath%>user/loginJsp">退出</a>
					</li>
				</ul>
			</div>

			<div class="layui-side hp-left-menu">
				<div class="layui-side-scroll">
					
					<ul class="layui-nav layui-nav-tree" lay-filter="test">
						<li class="layui-nav-item ">
						<a href="javascript:;">
							<i class="layui-icon layui-icon-set" style="font-size: 15px;"></i>
							基础</a>
							<dl class="layui-nav-child">
						     	<dd>
									<a class="hp-tab-add" hp-href="<%=basePath%>user/userlist" href="javascript:;">
									<i class="layui-icon layui-icon-rate" style="font-size: 15px;"></i> 
									用户管理列表</a>
								</dd>
								<dd>
									<a class="hp-tab-add" hp-href="<%=basePath%>type/totype" href="javascript:;">
										<i class="layui-icon layui-icon-rate-solid" style="font-size: 15px;"></i> 
									产品类型列表</a>
								</dd>
								<dd>
									<a class="hp-tab-add" hp-href="<%=basePath%>test/totest" href="javascript:;">
										<i class="layui-icon layui-icon-rate-half" style="font-size: 15px;"></i> 
									产品详情列表</a>
								</dd>
								<dd>
									<a class="hp-tab-add" hp-href="<%=basePath%>mess/tomess" href="javascript:;">
										<i class="layui-icon layui-icon-senior" style="font-size: 15px;"></i> 
									客户留言列表</a>
								</dd>
								<dd>
									<a class="hp-tab-add" hp-href="<%=basePath%>gywm/togywm" href="javascript:;">
										<i class="layui-icon layui-icon-senior" style="font-size: 15px;"></i> 
									关于网站列表</a>
								</dd>
								<dd>
									<a class="hp-tab-add" hp-href="<%=basePath%>hyzx/tohyzx" href="javascript:;">
										<i class="layui-icon layui-icon-senior" style="font-size: 15px;"></i> 
									行业资讯列表</a>
								</dd>
						
								</dl>
						</li>
					
						<%-- 
						<li class="layui-nav-item layui-nav-itemed">
							<a href="javascript:;">订单管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a  class="hp-tab-add"   hp-href="<%=basePath%>order_ordersList" href="javascript:;">所有订单</a>
								</dd>
							</dl>
						</li> --%>
					</ul>
				</div>
			</div>

			<div class="layui-body">
				<!-- 内容主体区域 -->
			<div class="layui-tab hp-tab " style="height: 884px" lay-filter="hp-tab-filter" lay-allowclose="true">
						<ul class="layui-tab-title" style="">
							<li class="layui-this" lay-id="0">首页</li>
						</ul>
				<div class="layui-tab-content" >
					<div class="layui-tab-item layui-show">
						<div class="layui-carousel" id="test1">
							<div carousel-item>
								 <div>
								    <div class="demo-carousel" style="background: url(<%=basePath%>/hp_layui/img/login/timg.jpg)">
								</div>
									<%--<div>
											<div class="layui-bg-red demo-carousel">
												<p style="font-size: 30px;">hp-layui 与你同在</p>
												<p style="font-size: 28px;">隐无为</p>
											</div>
										</div>
										<div>
											<div class="layui-bg-blue demo-carousel">
												<p style="font-size: 30px;">hp-layui 与你同在</p>
												<p style="font-size: 28px;">隐无为</p>
											</div>
										</div>
										<div>
											<div class="layui-bg-orange demo-carousel">
												<p style="font-size: 30px;">hp-layui 与你同在</p>
												<p style="font-size: 28px;">隐无为</p>
											</div>
										</div>
										<div>
											<div class="layui-bg-cyan demo-carousel">
												<p style="font-size: 30px;">hp-layui 与你同在</p>
												<p style="font-size: 28px;">隐无为</p>
											</div>
										</div> 
									</div> --%>
								</div>
                               
						</div>
					</div>

					</div>
			</div>
			<div class="layui-footer">
				<!-- 底部固定区域 -->
				<span style="display: block;margin-left:500px;color:#2F4F4F">@天衣无缝项目组</span>
			</div>
		</div>
		<script src="<%=basePath%>hp_layui/lib/layui/layui.js"></script>
		<script>
			// 配置
			layui.config({
				base: '<%=basePath%>hp_layui/hpModules/'// 扩展模块目录
			}).extend({ // 模块别名
				hpTab: 'hpTab/hpTab',
				hpRightMenu: 'hpRightMenu/hpRightMenu',
				hpFormAll: 'hpFormAll/hpFormAll',
			
			});
			//JavaScript代码区域
			
			layui.use(['element', 'carousel','hpTheme', 'hpTab', 'hpLayedit', 'hpRightMenu'], function() {
				
				var element = layui.element;
				var carousel = layui.carousel; //轮播
				var hpTab = layui.hpTab;
				var hpRightMenu = layui.hpRightMenu;
				var hpTheme=layui.hpTheme;
				$ = layui.jquery;
				/*var test=layui.test;
				console.log(test.version) */
           	    // 初始化主题
				hpTheme.init();
				 //初始化轮播
				carousel.render({
					elem: '#test1',
					width: '100%', //设置容器宽度
					interval: 1500,
					height: '835px',
					arrow: 'none', //不显示箭头
					anim: 'fade', //切换动画方式
				});
			
				// 初始化 动态tab
				hpTab.init();
				// 右键tab菜单
				hpRightMenu.init();

			});
			
		</script>
	</body>



</html>