<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>购物车界面</title>
		<!-- Bootstrap -->
		<link href="./css/bootstrap.min.css" rel="stylesheet">
		<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
		<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
		<!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
		<style>
			.container {
				text-align: -moz-center;
			}

			.foot {
				/* padding-top: 10px; */
				position: fixed;
				bottom: 0;
				left: 0;
				width: 100%;
				background-color: white;
			}

			.cart {
				height: 40px;
				line-height: 40px;
				margin-top: 0px;

			}
			.return{
				height: 40px;
				line-height: 40px;
				margin-top: 0px;
			}

			img {
				 max-width: 100%;
				max-height: 100% 
			}
			.cartGood{
				margin-top:20px
			}
			
		</style>
	</head>

	<body>
		<div class="container ">
			<div class="header col-xs-12" style="background-color: white;">
				<span class="cart col-xs-9">购物车</span>
				<span class="return col-xs-3 text-rigth"><a href="./UserIndex.html"style="color: black;">返回</a> </span>
			</div>
			<div class="index_body" style="background-color: #F4F4F4;">
				<div class="cartGood col-xs-12 col-lg-9 col-md-10 text-left" style="height: 100px;">
					<div class="picture col-xs-4 col-lg-3 col-md-3 " style="height: 100px;"><img src="./img/a3.jpg"style="height:100px;width:100px"></div>
					<div class="goodname&price col-xs-5 text-left" style="height: 100px;">
						<div style="height:40px">
							<span>贝壳绕线器 </span>
						</div>
						<div style="height: 50px">
							<span style="color: #B3B3B3; font-size: 8px;">123</span>
						</div>
						<div class="price" style=" height:10px">
							￥200
						</div>
					</div>
					<div class="num col-xs-3" style="height: 100px;vertical-align:middle;display:inline-block;">
						<input type="number" class="form-control" v-model="1">
					</div>
				</div>
				<div class="cartGood col-xs-12 col-lg-9 col-md-10 text-left" style="height: 100px;">
					<div class="picture col-xs-4 col-lg-3 col-md-3 " style="height: 100px;"><img src="./img/a1.jpg"style="height:100px;width:100px"></div>
					<div class="goodname&price col-xs-5 text-left" style="height: 100px;">
						<div style="height:40px">
							<span>贝壳绕线器 </span>
						</div>
						<div style="height: 50px">
							<span style="color: #B3B3B3; font-size: 8px;">123</span>
						</div>
						<div class="price" style=" height:10px">
							￥200
						</div>
					</div>
					<div class="num col-xs-3" style="height: 100px;vertical-align:middle;display:inline-block;">
						<input type="number" class="form-control" v-model="1">
					</div>
				</div>
				<div class="cartGood col-xs-12 col-lg-9 col-md-10 text-left" style="height: 100px;">
					<div class="picture col-xs-4 col-lg-3 col-md-3 " style="height: 100px;"><img src="./img/a2.jpg"style="height:100px;width:100px"></div>
					<div class="goodname&price col-xs-5 text-left" style="height: 100px;">
						<div style="height:40px">
							<span>贝壳绕线器 </span>
						</div>
						<div style="height: 50px">
							<span style="color: #B3B3B3; font-size: 8px;">123</span>
						</div>
						<div class="price" style=" height:10px">
							￥200
						</div>
					</div>
					<div class="num col-xs-3" style="height: 100px;vertical-align:middle;display:inline-block;">
						<input type="number" class="form-control" v-model="1">
					</div>
				</div>
			</div>
			<div class="foot ">
				<div class="foot-headercol-xs-12 col-lg-12 col-md-10  " style="height:40px">
					<div class=" totalprice col-xs-8 col-lg-5 text-center">
						<span style="height: 40px;line-height: 40px;">共2件，总价100元</span>
					</div>
					<div class="pay col-xs-4  col-lg-3 text-center" style="background: red; height: 40px;">
					<a href=""><span class="text-center"style="color: white;height: 40px;line-height: 40px;font-size: 20px;">去付款</span></a>
					</div>
					
				</div>
				<div class="foot-foot col-xs-12 visible-xs  visible-sm hidden-md hidden-lg">
					<div class="col-xs-4 text-left">
						<span class="glyphicon glyphicon-home "></span>
						<h6><a href="./UserIndex.html" style="color: black;">首 页</a></h6>
					</div>
					<div class="col-xs-4 text-center" style="color: red;">
						<span class="glyphicon glyphicon-shopping-cart"></span>
						<h6><a href="./shoppingCart.html" style="color: red;">购物车</a></h6>
					</div>
					<div class="col-xs-4 text-right">
					
						<span class="glyphicon glyphicon-user"></span>
					
						<a href="./my.html" style="color: black;">
							<h6>我 的</h6>
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
