<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ResourceBundle resource = ResourceBundle.getBundle("qiNiu");%>
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
	href="<%=basePath%>hp_layui/lib/layui/css/layui.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>hp_layui/css/hp-common.css" />
<style>
.layui-table img {
	width: 120px;
}

.layui-table-cell {
	height: 50px;
	line-height: 50px;
}

.layui-table .layui-icon {
	margin-top: 15px;
}
.sexClass input{
  		margin-top:12px
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
	   <button id="addSpe" class="layui-btn hp-btn-green">
	   <i class="layui-icon layui-icon-add-circle-fine"></i>添加
	   </button>
	   	<button id="selectdeleteOne" class="layui-btn hp-btn-warm">
			<i class="layui-icon  layui-icon-find-fill"></i>查找未删除
		</button>
		<button id="selectdelete" class="layui-btn layui-btn-danger">
			<i class="layui-icon"></i>查找已删除
		</button>
	</div>
		<table class="layui-table"
				lay-data="{cellMinWidth: 140, url:'<%=basePath%>type/showAll?is_delete=1', page:true, id:'demo',showLoad:true}"
				lay-filter="demo">
				<thead>
					<tr>
						<th lay-data="{type:'checkbox' ,fixed: 'left'}"></th>			
						<th lay-data="{field:'tid'}">种类编号</th>
						<th lay-data="{field:'tname'}">种类名称</th>
						<th lay-data="{field:'createTime'}">创建时间</th>
						<th lay-data="{field:'updateTime'}">修改时间</th>
						<th lay-data="{field:'is_delete',templet:deletes}">是否删除</th>
						<th	lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo1'}">操作</th>
					</tr>
				</thead>
			</table>
			<script type="text/html" id="barDemo1">
            
	       </script>
	       
	        <!-- 新增开始 -->
 <div id="add" style="display: none;">
 <form class="layui-form">
			<br>
		
			
		  <div class="layui-form-item">
		    <label class="layui-form-label">种类名称</label>
		    <div class="layui-input-inline">
		      <input id="nameadd" type="text" name="shop.title" lay-verify="required|yanzname" placeholder="请输入规格种类名称" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  
		
		  
		     <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn" lay-submit="" lay-filter="addUserBut">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
	  
	</form>
</div>

<!-- 新增用户end -->
	       
	       <!-- 修改开始 -->
 <div id="updatedetail" style="display: none;">
 <form class="layui-form">
 <input id="uidupdate" type="hidden" name="id" >
 <input id="createupdate" type="hidden" name="createTime" >
			<br>
				
		  <div class="layui-form-item">
		    <label class="layui-form-label">种类名称</label>
		    <div class="layui-input-inline">
		      <input id="nameupdate" type="text" name="name" lay-verify="required|yanzname" placeholder="请输入名称" autocomplete="off" class="layui-input">
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

<!-- 修改用户end -->
 
</body>
<script src="<%=basePath%>hp_layui/lib/layui/layui.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/jquery.min.js"></script>
<script>
function deletes(d){
	if(d.is_delete==0){
		$("#barDemo1").html('<a class="layui-btn layui-btn-danger layui-btn-xs" id="huayuan" lay-event="huanyuan">还原</a>');		
		 return "已删除";
	 }else if(d.is_delete==1){
		$("#barDemo1").html('<a class="layui-btn layui-btn-danger layui-btn-xs" id="update" lay-event="xiugai">修改</a> <a class="layui-btn layui-btn-danger layui-btn-xs" id="delete" lay-event="del">删除</a>');
		 return "未删除";
	 }
}

layui.use(['table','laypage','form', 'layedit', 'laydate','upload','layer'], function(){
		  var form = layui.form
		  ,layer = layui.layer
		  ,layedit = layui.layedit
		  ,laydate = layui.laydate
		  ,$ = layui.jquery
		  ,$=layui.$
		  ,upload = layui.upload;
  var table = layui.table;
  var $=layui.$; 

    // 表格刷新
   $("#refrsh").click(function(){
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
   })
  //监听单元格编辑
  table.on('edit(demo)', function(obj){
    var value = obj.value //得到修改后的值
    ,data = obj.data //得到所在行所有键值
    ,field = obj.field; //得到字段
    
  });
 //条件查询
   $("#selectdelete").click(function(){
   	debugger;
 table.reload('demo',{
	  page:{
		  curr:1
	  }
	  ,url:'<%=basePath%>type/showAll'
	  ,where:{
		  'is_delete':0
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
	  ,url:'<%=basePath%>type/showAll'
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
    ,url:'<%=basePath%>type/showGood'
    ,where:{
    'mohu':$("#inname").val(),
    }
    });	
    	
    })


//自定义验证规则
  form.verify({
	yanzname: function(value, item){ //value：表单的值、item：表单的DOM对象
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
			      return '产品类型种类名称不能重复';
			    }
		   }
	  
	  //我们既支持上述函数式的方式，也支持下述数组的形式
	  //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
	 
	}); 
 
 //验证登录名
   var addLevName=true;

   $("#nameadd").blur(function(){
   //异步提交
     		$.ajax({
 			    	 type:'post',
 			    	 url:'<%=basePath%>type/yanzName',
 			    	 data:{
 			    		 'tname':$("#nameadd").val(),
 			    		 'tid':0
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
   
   $("#nameupdate").blur(function(){
	   //异步提交
	     		$.ajax({
	 			    	 type:'post',
	 			    	 url:'<%=basePath%>type/yanzName',
	 			    	 data:{
	 			    		 'tname':$("#nameupdate").val(),
	 			    		 'tid':$("#uidupdate").val()
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
 
 
   //监听提交
   form.on('submit(addUserBut)', function(data){

 		      $.ajax({
 		    	 type:'post',
 		    	 url:'<%=basePath%>type/add',
 		    	 data:{
 					 'tname':$("#nameadd").val(),
 				     'is_delete':1
	    	 },
 		    	 dataType:'json',
 		    	 success:function(data){
 		    		 var mes=data.mes;
 		    		 if(mes=="success"){
 		    			 layer.msg("添加成功");
 		    			 $("#add button:reset").click();
 		    			 layer.closeAll();
 		    			 $("#refrsh").click();
 	        		 }else if(mes=="fail"){
 	        			 layer.msg("添加失败");
 	        			 $("#add button:reset").click();
 		    			 layer.closeAll();
 	        		 } 
 		    		
 		    	 }
 		     })
  	
     
     return false;//阻止表单提交
   });


  //新增用户
 $("#addSpe").click(function(){
 	
 	   layer.open({
 		   type: 1,
 		   title:'新增用户',
 		   area: ['400px', '600px'],
 		   content: $('#add'), //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响

 		   cancel: function(index, layero){
 			   if(confirm('确定要关闭么')){ //只有当点击confirm框的确定时，该层才会关闭
		   		    layer.close(index)
		   		  } 
 		     $("#add form input:text").each(function(){
		    	 $(this).val("");
		     });
 		    return false; 
 		   },
 		   maxmin :true  //默认不显示最大小化按钮。需要显示配置maxmin: true
 		   
 		 });
 }); 
 
 //监听提交
   form.on('submit(updateUserBut)', function(data){
 	  debugger;
     //异步提交
     		 
     		 var uidupdateVal=$("#uidupdate").val();
 	         var nameupdateVal=$("#nameupdate").val();
 		     $.ajax({
 		    	 type:'post',
 		    	 url:'<%=basePath%>type/update',
 		    	 data:{
 		    		 'tid':uidupdateVal,
 		    		 'tname':nameupdateVal,
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
  	
     
     return false;//阻止表单提交
   });
  
  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
    if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
        /* obj.del(); */
        //单个删除
        layer.close(index);
        $.ajax({
        	type:"post",
        	url:"<%=basePath%>type/deletes",
        	data:{
        		"tid":data.tid
        	},
        	dataType:"json",
        	success:function(data){
        			layer.msg("删除成功");
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
    }else if(obj.event === 'huanyuan'){
        layer.confirm('真的要还原吗', function(index){
            /* obj.del(); */
            //单个删除
            layer.close(index);
            $.ajax({
            	type:"post",
            	url:"<%=basePath%>type/deletes",
            	data:{
            		"tid":data.tid
            	},
            	dataType:"json",
            	success:function(data){
            			layer.msg("还原成功成功");
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
      		   area: ['400px', '500px'],
      		  content:$("#updatedetail"),
      		  anim:1,
      		   success:function(){
      			   $("#uidupdate").val(data.tid);
      			   $("#nameupdate").val(data.tname);
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
	  //日期
	  laydate.render({
	    elem: '#date'
	  });
	  
	  laydate.render({
		    elem: '#udate'
		  });
	  laydate.render({
	    elem: '#date1'
	  });
	  //创建一个编辑器
	  var editIndex = layedit.build('LAY_demo_editor');
	 
	  
	  //监听提交
	  form.on('submit(demo1)', function(data){
	    layer.alert(JSON.stringify(data.field), {
	      title: '最终的提交信息'
	    })
	    return false;
	  });
	
	});
</script>
</html>