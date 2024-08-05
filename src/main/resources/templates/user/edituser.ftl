<#include "/common/commoncss.ftl">
<style type="text/css">
a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class=""></h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##">="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">用户管理</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<!--id="container"-->
		<div class="bgc-w box">
			<!--盒子头-->
			<form action="useredit" method="post" onsubmit="return check();">
				<div class="box-header">
					<h3 class="box-title">
						<a href="javascript:history.back();" class="label label-default" style="padding: 5px;">
							<i class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
						</a>
					</h3>
				</div>
				<!--盒子身体-->
				<div class="box-body no-padding">
					<div class="box-body">
						<div class="alert alert-danger alert-dismissable" role="alert"
							style="display: none;">
							错误信息:<button class="close thisclose" type="button">&times;</button>
							<span class="error-mess"></span>
						</div>
						<div class="row">
							<#if where??>
								<div class="col-md-6 form-group">
									<label class="control-label"><span>员工号</span></label> <input
										name="userName" readonly="readonly" class="form-control" value="${(user.userName)!''}"/>
								</div>
							<#else>
								<div class="col-md-6 form-group">
									<label class="control-label"><span>员工号</span></label> <input
										name="userName" class="form-control usernameonliy" value="${(user.userName)!''}"/>
										<input type="hidden" class="usernameonliyvalue" value=""/>
								</div>
							</#if>
							
							<div class="col-md-6 form-group">
								<label class="control-label"><span>电话</span></label> <input
									name="userTel" class="form-control" value="${(user.userTel)!''}"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>姓名</span></label> <input
									name="realName" class="form-control" value="${(user.realName)!''}"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>邮箱</span></label> <input
									name="email" class="form-control" value="${(user.email)!''}"/>
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"> <span>部门</span></label>
								<select class="deptselect form-control" name="deptid">
									<#if user??>
										<option value="${(user.dept.deptId)!''}">${user.dept.deptName}</option>
									</#if>
									<#list depts as dept>
										<option value="${dept.deptId}">${dept.deptName}</option>
									</#list>
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"> <span>性别</span>
								</label> <select class="form-control" name="sex" value="${(user.sex)!''}">
									<option value="男">男</option>
									<option value="女">女</option>
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"> <span>职位</span></label>
								<select class="positionselect form-control" name="positionid">
									<#if user??>
										<option value="${(user.position.id)!''}">${user.position.name}</option>
									</#if>
									<#list positions as position>
										<option value="${position.id}">${position.name}</option>
									</#list>
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"> <span>角色</span>
								</label> <select class="form-control" name="roleid">
									<#if user??>
										<option value="${(user.role.roleId)!''}">${user.role.roleName}</option>
									</#if>
									<#list roles as role>
										<option value="${role.roleId}">${role.roleName}</option>
									</#list>
								</select>
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"> <span>皮肤</span>
								</label> <select class="form-control" name="themeSkin" value="${(user.themeSkin)!''}">
                                    <option value="blue">经典蓝</option>
                                    <option value="green">青草绿</option>
                                    <option value="red">中国红</option>
                                    <option value="yellow">商务黄</option>
                                    <option value="purple">高贵紫</option>
								</select>
							</div>
							<input type="hidden" name="userId" value="${(user.userId)!''}"/>
						</div>
	
						<!--判断一下 请求参数的值  进行显示-->
						<#if where??>
							<div class="row">
								<hr />
								<!-- <div class="col-md-6">
									<label class="control-label"><span>头像</span></label>
									<div style="padding: 10px;">
										<img src="img/1.jpg"
											style="width: 100px; height: 100px; border-radius: 100px;" />
									</div>
									<div class="btn btn-default"
										style="position: relative; overflow: hidden;">
										<i class="glyphicon glyphicon-open"></i> 上传头像 <input type="file"
											name="file"
											style="opacity: 0; position: absolute; top: 0; right: 0; min-width: 100%; min-height: 100%;" />
									</div>
								</div> -->
								<div class="col-md-6">
									<label class="control-label"><span>重置密码</span></label> <br>
									<span class="labels"><label><input name="isbackpassword" type="checkbox"><i>✓</i></label></span>
								</div>
							</div>
						</#if>
					</div>
				</div>
				<!--盒子尾-->
				<div class="box-footer">
					<input class="btn btn-primary" id="save" type="submit" value="保存" />
					<input class="btn btn-default" id="cancel" type="button" value="取消"
						onclick="window.history.back();" />
				</div>
			</form>
		</div>
	</div>
</div>
<#include "/common/modalTip.ftl"/> 
<script type="text/javascript">
$(".usernameonliy").on("blur",function(){
	console.log("改变了！！~~");
	$.post("useronlyname",{"username":$(this).val()},function(data){
		console.log(data);
		$(".usernameonliyvalue").val(data);
	});
}); 
$(".usernameonliy").focus(function(){
	$(this).parent().removeClass("has-error has-feedback");
	$('.alert-danger').css('display', 'none');
});


/* if(index == 0){
	var $username = $(this).val();
	
	$.ajax(url:"useronlyname",{"username",$username},success:function(data){
		console.log(data)
		if(!data){
			$(".usernameonliy").parent().addClass("has-error has-feedback");
				alertCheck("员工号已存在");
				isRight = 0;
	 			return false;
		}
	});
	
} */

$(".deptselect").on("change",function(){
	//alert("部门选择变化");
	var selectdeptid = $(this).val();
	
	$.post("selectdept",{selectdeptid:selectdeptid},function(data){
		$(".positionselect").empty();
		
		//console.log(data);
		$.each(data,function(i,item){
			var potion = $("<option value="+item.id+">"+item.name+"</option>");
			$(".positionselect").append(potion);
		});
	});
	
});


/* $('.successToUrl').on('click',function(){
	window.location.href='/testsysmenu';
});
 */
function alertCheck(errorMess){
	
	$('.alert-danger').css('display', 'block');
	// 提示框的错误信息显示
	$('.error-mess').text(errorMess);
	
}
//表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
function check() {
	console.log("开始进入了");
	//提示框可能在提交之前是block状态，所以在这之前要设置成none
	$('.alert-danger').css('display', 'none');
	var isRight = 1;
	$('.form-control').each(function(index) {
		// 如果在这些input框中，判断是否能够为空
		if ($(this).val() == "") {
			// 排除哪些字段是可以为空的，在这里排除
			if (index == 9 || index == 10 || index == 11 || index == 12 || index == 13 || index == 15) {
				return true;
			}
			// 获取到input框的兄弟的文本信息，并对应提醒；
			var brother = $(this).siblings('.control-label').text();
			var errorMess = "[" + brother + "输入框信息不能为空]";
			// 对齐设置错误信息提醒；红色边框
			$(this).parent().addClass("has-error has-feedback");
			$('.alert-danger').css('display', 'block');
			// 提示框的错误信息显示
			$('.error-mess').text(errorMess);
			// 模态框的错误信息显示
			$('.modal-error-mess').text(errorMess);
			isRight = 0;
			return false;
		} else {
			if(index == 0){
				var aaa= $(".usernameonliyvalue").val();
				if(aaa=="false"){
					console.log("进来了0");
					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("员工号已存在");
 					isRight = 0;
 		 			return false;
				}
				
			}

			if(index == 1){
				var $tel = $(this).val();
				
				if(isPhoneNo($tel) == false){
					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("手机格式错误");
 					isRight = 0;
 		 			return false;
				}
			}
			if(index == 3){
				var $email = $(this).val();
				
				if(isMailNo($email) == false){
					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("邮箱格式错误");
 					isRight = 0;
 		 			return false;
				}
			}


			// 在这个里面进行其他的判断；不为空的错误信息提醒
			return true;
		}
	});
	if (isRight == 0) {
		//modalShow(0);
		 return false;
	} else if (isRight == 1) {
		//modalShow(1);
		 return true;
	}
//	return false;
}

// 验证手机号
function isPhoneNo(phone) { 
 var pattern = /^1[34578]\d{9}$/; 
 return pattern.test(phone); 
}

//验证邮箱
function isMailNo(mail){
	var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/; 
	return pattern.test(mail);
}

</script>