<#include "/common/commoncss.ftl"/>
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

.c {
	font-weight: 600;
}

.paixu:HOVER {
	cursor: pointer;
	color: #337ab7;
}
</style>

<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">通知列表</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
		> <a disabled="disabled">通知列表</a>
	</div>
</div>

<div class="row" style="padding-top: 15px;">
	<div class="col-md-12 thistable">
		<!--id="container"-->
		<#include "informlistpaging.ftl"/>
	</div>
</div>