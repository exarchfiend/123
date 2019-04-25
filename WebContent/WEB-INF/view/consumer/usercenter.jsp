<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>个人中心</title>
		<!-- Bootstrap -->
		<link href="./css/bootstrap.min.css" rel="stylesheet">
		<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
		<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
		<!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
		<style>
			.foot {
				/* padding-top: 10px; */
				position: fixed;
				bottom: 0;
				left: 0;
				width: 100%;
				background-color: white;
			}

			img {
				max-width: 100%;
				max-height: 100%;
				height: 60px;
				width: 60px;

				border-radius: 60px;
			}

			.container {
				background-color: #F4F4F4;
			}

			.body_top {
				margin-top: 0px;
			}

			.userphoto {
				margin-top: 10px
			}

			.name {
				margin-top: 10px;
			}
		</style>
	</head>

	<body>
		<div class="container">
			<div class="header">
				<h5 style="">个人中心</h5>
			</div>
			<div class="MyBody" style="background: #F4F4F4;">
				<div class="body_top" style="height: 130px;background: #444348;">
					<div class="userphoto col-xs-12 text-center">
						<img src="./img/a22.jpg" alt="" style=" ">
					</div>
					<div class="username text-center" style="color: white;height:50px;line-height: 50px;">旧故里草木深</div>
				</div>
				<div class="body_bottom">
					<ul class="list-group">
						<li class="list-group-item"><a href="./myOrder.html" style="color: black;">我的订单</a></li>
						<li class="list-group-item"><a href="./myAddress.html" style="color: black;">收货地址</a></li>
						<li class="list-group-item"><a href="" style="color: black;">优惠券</a></li>
						<li class="list-group-item"><a href="" style="color: black;">邀请码</a></li>
						<li class="list-group-item"><a href="" style="color: black;">门票卡券</a></li>
					</ul>
				</div>
			</div>
			<div class="foot ">

				<div class="foot-foot col-xs-12 visible-xs  visible-sm hidden-md hidden-lg">
					<div class="col-xs-4 text-left">
						<span class="glyphicon glyphicon-home "></span>
						<h6><a href="./UserIndex.html" style="color: black;">首 页</a></h6>
					</div>
					<div class="col-xs-4 text-center" ">
						<span class=" glyphicon glyphicon-shopping-cart"></span>
						<h6><a href="./shoppingCart.html" style="color:black">购物车</a></h6>
					</div>
					<div class="col-xs-4 text-right" style="color: red;">

						<span class="glyphicon glyphicon-user"></span>

						<a href="./my.html">
							<h6 style="color: red;">我 的</h6>
						</a>
					</div>
				</div>
			</div>
		</div>

		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
		<script src="./js/jquery.js"></script>
		<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
		<script src="./js/bootstrap.min.js"></script>
		<script src="./js/vue.js"></script>
		<script>

		</script>
	</body>

</html>
