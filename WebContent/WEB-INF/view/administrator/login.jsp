<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>登录</title>
		<!-- Bootstrap -->
		<link href="./oneplus/WebContent/WEB-INF/view/css/bootstrap.min.css" rel="stylesheet">
		<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
		<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
		<!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
	</head>

	<body>
		<div id="login" class="container">
			<div class="row">
				<div class="col-xs-12" style="height:5px"></div>
			</div>
			<div class="row">
				<div class="col-xs-4 text-info text-center"></div>
				<div class="col-xs-4 text-info text-center">
					<h3>后台<small>登录页</small></h3>
				</div>
				<div class="col-xs-4 text-info text-center"></div>
			</div>
			<div class="row">
				<div class="col-xs-12" style="background:rgb(60, 60, 61);height:1px"></div>
			</div>
			<div class="row">
				<div class="col-xs-12" style="height:30px"></div>
			</div>
			<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8 input-group">
					<span class="input-group-addon" id="sizing-addon2">账 号：</span>
					<input type="text" class="form-control" placeholder="请输入账号" aria-describedby="sizing-addon2" v-bind:value="username">
				</div>
				<div class="col-xs-2"></div>
			</div>
			<div class="row">
				<div class="col-xs-12" style="height:10px"></div>
			</div>
			<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8 input-group">
					<span class="input-group-addon" id="sizing-addon2">密 码：</span>
					<input type="text" class="form-control" placeholder="请输入密码" aria-describedby="sizing-addon2" v-bind:value="password">
				</div>
				<div class="col-xs-2"></div>
			</div>
			<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8"></div>
				<div class="col-xs-2"></div>
			</div>
			<div class="row">
				<div class="col-xs-12  text-center">
					<a href="./backIndex.html"><button class="btn btn-success" v-on:click="login">登录</button></a>
				</div>
			</div>
		</div>
		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
		<script src="./oneplus/WebContent/WEB-INF/view/js/jquery.js"></script>
		<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
		<script src="./oneplus/WebContent/WEB-INF/view/js/bootstrap.min.js"></script>
		<script src="./oneplus/WebContent/WEB-INF/view/js/vue.js"></script>
		<script>
			
		</script>
	</body>

</html>
    