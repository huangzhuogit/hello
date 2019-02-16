<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ResourceBundle resource = ResourceBundle.getBundle("qiNiu");
%>
<c:set var="context_path" value="<%=basePath%>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>"/>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<script type="text/javascript">
	   var basePath = "<%=basePath%>";
	</script>
<link rel="stylesheet" href="<%=basePath%>hp_layui/lib/layui/css/layui.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>hp_layui/css/hp-common.css"/>
  <style>
  	.layui-table img {
    width: 120px;
    }
  	.layui-table-cell{
  	height: 50px;
    line-height: 50px;
  	}
  .layui-table .layui-icon{
  		margin-top:18px;
  	}
  	.span-sexadd input{
  		margin-top: 12px; 	
  		}
  		
   .layui-form-item{
 		margin-bottom: 5px;
 	 }
 	.layui-input.layui-unselect{
 		margin-top: 15px;
 	}
  		
  		
  </style>
  
 
</head>
<body>
<div class="hp-div-form">
		<blockquote class="layui-elem-quote">
			<form class="layui-form" id="hp-form">
				<div class="layui-form-item hp-form-item">
					<div class="layui-inline hp-form-inline" style="margin-left:1200px;">
						<div class="layui-input-inline" style="width: 150px;">
							<input id="inname" type="text" name="tname" placeholder="请输入查询条件"
								autocomplete="off" class="layui-input">
						</div>
					</div>
					
					<div class="layui-inline hp-form-inline">
						<div class="layui-input-inline" style="width: 150px;">
							<button id="ubtn" class="layui-btn" type="button">
								<i class="layui-icon"></i>查询
							</button>
						</div>

					</div>

				</div>
			</form>
		</blockquote>
	</div>
	
  <div class="layui-btn-group demoTable">
       <button id="refrsh" class="layui-btn hp-btn-normal">
	   <i class="layui-icon layui-icon-refresh-3"></i>刷新
	   </button>
	   	<button id="selectdeleteOne" class="layui-btn hp-btn-orange">
			<i class="layui-icon layui-icon-find-fill"></i>查找未阅读
		</button>
		<button id="selectdelete" class="layui-btn layui-btn-danger">
			<i class="layui-icon"></i>查找已阅读
		</button>
	</div>
 
<table class="layui-table" lay-data="{cellMinWidth: 140, url:'<%=basePath%>mess/findAllByPage?is_delete=1', page:true, id:'demo',showLoad:true}" lay-filter="demo">
  <thead>
    <tr>
      <th lay-data="{type:'checkbox' ,fixed: 'left'}"></th>
	  <th lay-data="{field:'messId'}">留言编号</th>
	  <th lay-data="{field:'messageName'}">留言者姓名</th>
	  <th lay-data="{field:'messagePhone'}">留言者电话</th>
      <th lay-data="{field:'messageMark'}">留言内容</th>
   	  <th lay-data="{field:'createTime'}">创建时间</th>
      <th lay-data="{field:'updateTime'}">查阅时间</th>
   	  <th lay-data="{field:'is_delete',templet:deletes}">留言状态</th>
      <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo1'}">操作</th>
    </tr>
  </thead>
</table>  
	     
<script type="text/html" id="barDemo1">
</script>

<div id="addUI" style="display: none;">
		<form class="layui-form">
			<div class="layui-form-item">
				<label class="layui-form-label">留言者姓名:</label>
				<div class="layui-input-inline">
					<input id="messageNameAdd" type="text" name="user.loginName"
						lay-verify="required|yanzname" placeholder="请输入留言者姓名" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			
				<div class="layui-form-item">
				<label class="layui-form-label">留言者电话:</label>
				<div class="layui-input-inline">
					<input id="messagePhoneAdd" type="text" name="user.loginPwd"
						lay-verify="required|phoneone" placeholder="请输入留言者电话" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			
			
		
			<div class="layui-form-item layui-form-text">
		       <label class="layui-form-label">留言内容:</label>
		       <div class="layui-input-block">
		        <textarea id="messageMarkAdd" placeholder="请输入内容" class="layui-textarea"></textarea>
		    </div>
			
			</div>
		
		
		 <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn" lay-submit="" lay-filter="addUI">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
		
		</form>
	</div>
	
	<!-- 
			修改	
	 -->
   
   <div id="updateUI" style="display: none;">
   
   <input id="messIdupdate" type="hidden">
		<form class="layui-form">
				<div class="layui-form-item">
				<label class="layui-form-label">留言者姓名:</label>
				<div class="layui-input-inline">
					<input id="messageNameupdate" type="text" name="user.loginName"
						lay-verify="required|yanzname" placeholder="请输入留言者姓名" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			
				<div class="layui-form-item">
				<label class="layui-form-label">留言者电话:</label>
				<div class="layui-input-inline">
					<input id="messagePhoneupdate" type="text" name="user.loginPwd"
						lay-verify="required|phoneone" placeholder="请输入留言者电话" autocomplete="off"
						class="layui-input">
				</div>
			</div>
		
			<div class="layui-form-item layui-form-text">
		       <label class="layui-form-label">留言内容:</label>
		       <div class="layui-input-block">
		        <textarea id="messageMarkupdate" placeholder="请输入内容" class="layui-textarea"></textarea>
		      </div>
			
			</div>
		
			
		
		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn" lay-submit="" lay-filter="updateUserBut">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
		</form>
	</div>
   

<script src="<%=basePath%>/hp_layui/lib/layui/layui.js"></script> 
<script type="text/javascript" src="<%=basePath%>/js/jquery.min.js"></script>

<script  type="text/javascript">
// 图片格式化
function imgFmt(d){
	return '<img style="width:120px;height:50px" src="hp_layui/img/'+d.img+' " />'
} 

function deletes(d){
	if(d.is_delete==2){
		$("#barDemo1").html('<a class="layui-btn layui-btn-danger layui-btn-xs" id="huayuan" lay-event="delete">删除</a>');
		 return "已阅读";
	 }else if(d.is_delete==1){
		$("#barDemo1").html('<a class="layui-btn layui-btn-danger layui-btn-xs" id="delete" lay-event="del">查阅</a>');
		 return "未阅读";
	 }
}





layui.use(['table','layer','form','laydate','upload'], function(){
	  var table = layui.table;
	  var layer=layui.layer;
	  var form = layui.form;
	  var upload = layui.upload;
	  var $=layui.$;
	  var laydate = layui.laydate;
	  

    // 表格刷新
   $("#refrsh").click(function(){
   	      //执行重载
      table.reload('demo', {
        page: {
          curr: 1 //重新从第 1 页开始
        }
        ,where: {
          // 参数
          kd:'kd'
        }
      });
   	
   })
   
    
   
    $("#selectdelete").click(function(){
   	debugger;
 table.reload('demo',{
	  page:{
		  curr:1
	  }
	  ,url:'<%=basePath%>mess/findAllByPage'
	  ,where:{
		  'is_delete':2
	  }
 });
    
   })
   
      
   //条件查询
   $("#selectdeleteOne").click(function(){
   	debugger;
 table.reload('demo',{
	  page:{
		  curr:1
	  }
	  ,url:'<%=basePath%>mess/findAllByPage'
	  ,where:{
		  'is_delete':1
	  }
 });
    
   })
   
   $("#ubtn").click(function(){
    table.reload('demo',{
    	page:{
    		curr:1
    	}
    ,url:'<%=basePath%>mess/showGood'
    ,where:{
    'mohu':$("#inname").val(),
    }
    });	
    	
    })
 
   

    


    
    

    
 
  form.on('submit(addUI)', function(data){
	  debugger;
	  $.ajax({
	    	 type:'post',
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
	    			 layer.msg("添加成功");
	    			 $("#addUI button:reset").click();
	    			 layer.closeAll();
	    			 $("#refrsh").click();
      		 }else if(mes=="fail"){
      			 layer.msg("添加失败");
	    			 $(".layui-layer-btn1").click();
	    			 layer.close();
      		 } 
	    		
	    	 }
	     })
	    
	  return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
	});
   form.verify({
		 username: function(value, item){ //value：表单的值、item：表单的DOM对象
 	 if(!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)){
    return '产品名称不能有特殊字符';
  }
  if(/(^\_)|(\__)|(\_+$)/.test(value)){
    return '产品名称首尾不能出现下划线\'_\'';
  }
  if(/^\d+\d+\d$/.test(value)){
    return '产品名称不能全为数字';
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
	   }     

,pass: [
  /^[\S]{6,12}$/
  ,'密码必须6到12位，且不能出现空格'
] 
,phoneone:function(value, item){
	  if(!(/^1\d{10}$/.test(value))){
		    return '手机号必须是以1开头的11位数字';
		  }
	 
}
})
 
    
    
 //新增用户
 $("#addSpedetai").click(function(){
 	  layer.open({
 		   type: 1,
 		   title:'新增用户',
 		   area: ['600px', '600px'],
 		   content: $('#addUI'),//这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响

 		   cancel: function(){ 
 		     //右上角关闭回调
 		       $("#addUI form input:text").each(function(){
		    	 $(this).val("");
		     });
 		     //return false 开启该代码可禁止点击该按钮关闭
 		   }, 
 		   maxmin :true  //默认不显示最大小化按钮。需要显示配置maxmin: true
 		   
 		 });
 });
  
   
 
   //监听表格复选框选择
  table.on('checkbox(demo)', function(obj){
    console.log(obj)
  });
  
  //监听单元格编辑
  table.on('edit(demo)', function(obj){
    var value = obj.value //得到修改后的值
    ,data = obj.data //得到所在行所有键值
    ,field = obj.field; //得到字段
    
  });
 
  
  
  
  
  
//监听提交
  form.on('submit(updateUserBut)', function(data){
    
    //异步提交    		
		     $.ajax({
		    	 type:'post',
		    	 url:'<%=basePath%>mess/goodUpdate',
		    	 data:{
		    		    'messId':$("#messIdupdate").val(), 		    	 
			    	    'messageName':$("#messageNameupdate").val(),
					    'messagePhone':$("#messagePhoneupdate").val(),
				        'messageMark':$("#messageMarkupdate").val(),
		    	 },
		    	 dataType:'json',
		    	 success:function(data){
		    		 var mes=data.mes;
		    		 if(mes=="success"){
		    			 layer.msg("修改成功");
		    			 $("#updatedetail button:reset").click();
		    			 layer.closeAll();
		    			$("#refrsh").click();
	        		 }else if(mes=="fail"){
		    			 layer.msg("修改失败");
		    			 $("#updatedetail button:reset").click();
		    			 layer.closeAll();
	        		 } 
		    	 }
		     })
		    
			  return false;
			});
		   
    
  
  
  //监听工具条
  table.on('tool(demo)', function(obj){
	  debugger;
    var data = obj.data;
    if(obj.event === 'del'){
      layer.confirm('阅读需要一点时间,请稍等', function(index){
       /*  obj.del();
        layer.close(index);
    	  */
    	  layer.close(index);
    	  $.ajax({
          	type:'post',
          	url:'<%=basePath%>mess/deletes',
          	data:{
          		'messId':data.messId
          	},
          	dataType:'json',
          	success:function(data){
          		var mes=data.mes;
          		if(mes=="success"){
          			//删除成功,刷新页面数据
          			layer.msg("阅读成功");
          			$("#refrsh").click();
          		}else if (mes=="fail") {
          			layer.msg("阅读失败");
				}
          	}
          	
          })
      });
	}else if(obj.event === 'delete'){
        layer.confirm('这是已阅读过的留言,您确定删除吗？', function(index){
            /* obj.del(); */
            //单个删除
            layer.close(index);
            $.ajax({
            	type:"post",
            	url:"<%=basePath%>mess/del",
            	data:{
            		"messId":data.messId
            	},
            	dataType:"json",
            	success:function(data){
            		var mes=data.mes;
            		if(mes=="success"){
              			//删除成功,刷新页面数据
              			layer.msg("恭喜您删除成功！");
              			$("#refrsh").click();
              		}else if (mes=="fail") {
              			layer.msg("很遗憾删除失败！");
    				}
      			  table.reload('demo', {
      			        page: {
      			   	      //执行重载
      			          curr: 1 //重新从第 1 页开始
      			        }
      			        ,where: {
      			          // 参数
      			          kd:'kd'
      			        }
      			      });
            	}
            });
          });
        }else if(obj.event === 'xiugai'){
        	debugger;
        	layer.open({
      		   type: 1,
      		   title:'修改用户',
      		   area: ['600px', '600px'],
      		  content:$("#updateUI"),
      		  anim:1,
      		   success:function(){
      			   $("#messIdupdate").val(data.messId);
        		  $('#messagePhoneupdate').val(data.messagePhone);
     			   $("#messageNameupdate").val(data.messageName);
     			  $("#messageMarkupdate").val(data.messageMark);
      		   },
    		   cancel: function(){ 
    		     //右上角关闭回调
    		   $("#update button:reset").click();
    		     //return false 开启该代码可禁止点击该按钮关闭
    		   }, 
    		   maxmin :true  //默认不显示最大小化按钮。需要显示配置maxmin: true
    		   
    		 });
      		 }
	 
  });
  

  
  //监听排序
  table.on('sort(demo)', function(obj){
    console.log(this, obj.field, obj.type)
    
    return;
    table.reload('idTest', {
      initSort: obj
      ,where: { //重新请求服务端
        key: obj.field //排序字段
        ,order: obj.type //排序方式
      }
      //,height: 300
    });
  });
  

})
</script>
</body>

</html>