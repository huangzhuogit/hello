<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<c:set var="context_path" value="<%=basePath%>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	   var basePath = "<%=basePath%>";
	</script>
<link rel="stylesheet"
	href="<%=basePath%>/hp_layui/lib/layui/css/layui.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/hp_layui/css/pageDemo/login/login1.css" />
<style type="text/css">
ul {
	width: 240px;
	margin-left: 10px;
}

ul li {
	width: 90px;
}

.layui-this {
	background-color: white;
}

  	body{
  	background: url(<%=basePath%>hp_layui/img/login/1.jpg) no-repeat center;
  	background-size: 100% 100%
    	}

</style>
</head>
<body>
<div class="login">
		<div class="layui-tab">
			<ul class="layui-tab-title">
				<li id="log" class="layui-this">登录</li>
				  <li id="reg">注册</li>
			</ul>
			<div class="layui-tab-content">
				<div id="loginDiv" class="layui-tab-item layui-show">
					<form class="layui-form">
						<div class="layui-form-item">
							<input id="loginName" class="layui-input" name="u.uname"
								placeholder="用户名" lay-verify="required|username" type="text"
								autocomplete="off">
						</div>
						<div class="layui-form-item">
							<input id="loginPwd" class="layui-input" name="u.upwd"
								placeholder="密码" lay-verify="required|pass" type="password"
								autocomplete="off">
						</div>
							 <div class="layui-form-item form_code">
								<input id="code" class="layui-input" name="code" placeholder="验证码" lay-verify="required" type="text" autocomplete="off">
								<div class="code"><img id="codeImg" src="<%=basePath%>user/getCode" width="116" height="36" onclick="getCode()"></div>
						    </div>
						<button type="button" class="layui-btn login_btn" lay-submit=""
							lay-filter="demo1">登录</button>
					</form>
				</div>
				
				    <div id="registerDiv" class="layui-tab-item"> 
		    	<form class="layui-form">
			    	<div class="layui-form-item"  style="margin-bottom:0px">
						<input id="regname" class="layui-input" name="username" placeholder="用户名" lay-verify="required|yanzname" type="text" autocomplete="off">
				    </div>
				     <div style="width:240px;height:20px"><span id="regnamespan" style="font-size:20px"></span></div>
				    <div class="layui-form-item"  style="margin-bottom:0px">
						<input id="regphone" class="layui-input" name="phone" placeholder="手机号" lay-verify="required|phoneone" type="text" autocomplete="off">
				    </div>
				      <div style="width:240px;height:20px"><span id="regnamespan" style="font-size:20px"></span></div>
				    <div class="layui-form-item"  style="margin-bottom:0px">
						<input id="reguserName" class="layui-input" name="name" placeholder="真实姓名" lay-verify="required|yanzname" type="text" autocomplete="off">
				    </div>
				     <div style="width:240px;height:20px"><span id="regphonespan" style="font-size:20px"></span></div>
				    <div class="layui-form-item form_code"  style="margin-bottom:0px">
						<input id="jSmsCode" class="layui-input" name="code" placeholder="验证码" lay-verify="required" type="text" autocomplete="off">
						<div class="code"><button id="regbutton" type="button" class="layui-btn layui-btn-warm" style="width: 116px;height: 38px;margin-top: -1px" onclick="getSmsCode()">获取验证码</button></div>
				    </div> 
				     <div style="width:240px;height:20px"><span id="regcodespan" style="font-size:20px"></span></div>
					<button type="button" class="layui-btn login_btn" lay-submit="" lay-filter="register" onclick="register()">注册</button>
				</form>
		    </div>
				
				
			</div>
		</div>

	</div>
</body>

<script src="<%=basePath%>/hp_layui/lib/layui/layui.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/jquery.min.js"></script>
<script type="text/javascript">
layui.use(['form', 'layedit', 'laydate','element'], function(){
	  var form = layui.form
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate,
	  element = layui.element;
	  
	  //验证登录名
      var addLevName=true;

  $("#regname").blur(function(){
  //异步提交
    		$.ajax({
			    	 type:'post',
			    	 url:'<%=basePath%>user/yanzName',
			    	 data:{
			    		 'loginName':$("#regname").val(),
			    		 'uid':0
			    	 },
			    	 dataType:'json',
			    	 success:function(data){
			    	
			    		 var mes=data.mes;
			    		 if(mes=="success"){
			    			 addLevName=false;
		        		 }else if(mes=="fail"){
		        			 addLevName=true;
		        		 } 
			    	 }
			     })
  });
   
   //验证登录名end
          //验证手机号
  var addLevphone=true;

$("#regphone").blur(function(){
//异步提交
		$.ajax({
		    	 type:'post',
		    	 url:'<%=basePath%>user/yanzphone',
		    	 data:{
		    		 'userPhone':$("#regphone").val(),
		    		 'uid':0
		    	 },
		    	 dataType:'json',
		    	 success:function(data){
		    debugger;
		    		 var mes=data.mes;
		    		 if(mes=="success"){
		    			 addLevphone=false;
	        		 }else if(mes=="fail"){
	        			 addLevphone=true;
	        		 } 
		    	 }
		     })
});
//验证手机号end   
	  
	  
	  
	  form.verify({
		  username: function(value, item){ //value：表单的值、item：表单的DOM对象
		    if(!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)){
		      return '用户名不能有特殊字符';
		    }
		    if(/(^\_)|(\__)|(\_+$)/.test(value)){
		      return '用户名首尾不能出现下划线\'_\'';
		    }
		    if(/^\d+\d+\d$/.test(value)){
		      return '用户名不能全为数字';
		    }
		  }
	  ,yanzname: function(value, item){ //value：表单的值、item：表单的DOM对象
			    if(!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)){
				       return '不能有特殊字符';
				     }
				     if(/(^\_)|(\__)|(\_+$)/.test(value)){
				       return '首尾不能出现下划线\'_\'';
				     }
				     if(/^\d+\d+\d$/.test(value)){
				       return '不能全为数字';
				     }
				     if(addLevName){
					      return '登录名不能重复';
					    }
				   }     
			,phoneone:function(value, item){
					  if(!(/^1\d{10}$/.test(value))){
						    return '手机号必须是以1开头的11位数字';
						  }
					  if(addLevphone){
						  return '手机号不能重复';
					  }
				}
		  
		  //我们既支持上述函数式的方式，也支持下述数组的形式
		  //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
		  ,pass: [
		    /^[\S]{6,12}$/
		    ,'密码必须6到12位，且不能出现空格'
		  ] 
		}); 
	//监听提交
	  form.on('submit(demo1)', function(data){
		  $.ajax({
			   type:"post",
			   url:"<%=basePath%>user/login",
			   data:{
				    "loginName":$("#loginName").val(),
					"loginPwd":$("#loginPwd").val(),
					"coded":$("#code").val()
			   },
			   dataType:"json",
			   success: function(data){
				   var mes=data.mes;
				   if(mes=="success"){
					   layer.msg('登录成功', {"icon": 6,"time":1000});
					   setTimeout('window.location = "<%=basePath%>user/back"',1000);
				   }else if(mes=="fail"){
					   layer.msg('用户名或密码错误', {icon: 5});
					   $("#uname").val("");
					   $("#upwd").val("");
					   getCode();
				   }else if(mes=="codeFail"){
					 layer.msg('验证码错误', {icon: 5});
					  getCode();
				}else if(mes=="error"){
					layer.msg('服务器异常', {icon: 5});
				}
			   }
		   });
		  
	    return false;
	  });
	
	  form.on('submit(register)', function(data){
		  var registerPhoneVal=$("#regphone").val();
			var registerUsernameVal=$("#regname").val();
			var jSmsCodeVal=$("#jSmsCode").val();
			var userNameVal=$("#reguserName").val();
			$.ajax({
				type:"post",
				url:"<%=basePath%>user/pdCode",
				datatype:"json",
				data:{
					"userPhone":registerPhoneVal,
					"loginName":registerUsernameVal,
					"coded":jSmsCodeVal,
					"userName":userNameVal
				},
				success :function(data){
					var mes=data.mes;
					if(mes=="success"){
						layer.msg('注册成功', {icon: 1});
	     			$("#registerDiv input:text").each(function(){
	     				$(this).val("");
	     			})
						$("#reg").removeClass("layui-this");
						$("#log").addClass("layui-this");
						$("#registerDiv").removeClass("layui-show");
						$("#loginDiv").addClass("layui-show");
					}else if(mes=="codeError"){
						layer.msg('验证码输入有误', {icon: 5});
				    	$("#regcodespan").css("color","red");
						$("#jSmsCode").val("");
						$("#jSmsCode").focus();
					}
				}
			});
		  
	    return false;
	  });
	
	
	
	
})
	   //注册
	   var reg=true;	    
	   
	   function getCode(){
    	   $("#codeImg").attr("src","<%=basePath%>user/getCode?"+ new Date());
       } 
	   //注册
	   var intervalobj;
		var count=60;
		var curCount;
		
		function getSmsCode(){
			
			var registerPhoneVal=$("#regphone").val();
			if(/^1\d{10}$/.test(registerPhoneVal)){
			curCount=count;
			$("#regbutton").attr("disabled","true");
			$("#regbutton").html("重新发送("+curCount+"s)");
			$("#regbutton").css("background-color","#ff0000");
			intervalobj=window.setInterval(SetRemainTime,1000);
			$.ajax({
				type:"post",
				url:"<%=basePath%>user/getCodedx",
				datatype:"json",
				data:{
					"userPhone":registerPhoneVal
				},
				success :function(data){
					var mes=data.mes;
					if(mes=="success"){
						layer.msg('发送成功', {icon: 1});
					}else if(mes=="fail"){
						layer.msg('发送失败', {icon: 5});
					}else if(mes=="error"){
						layer.msg('服务器异常', {icon: 5});
					}
				}
			});
			}else{
				layer.msg('请输入正确的手机号', {icon: 5});
			}
		}
	function SetRemainTime(){
		if(curCount==0){
			window.clearInterval(SetRemainTime);
			$("#regbutton").removeAttr("disabled");
			$("#regbutton").html("重新发送");
			$("#regbutton").css("background-color","#ffb800");
		}else{
			curCount--;
			$("#regbutton").html("重新发送("+curCount+"s)");
			$("#regbutton").css("background-color","#ff0000");
		}
	}
		 
	   

</script>
</html>