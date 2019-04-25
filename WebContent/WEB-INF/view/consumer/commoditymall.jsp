<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>手机商城</title>
		<!-- Bootstrap -->
		<link href="/oneplus/WebContent/WEB-INF/view/css/bootstrap.min.css" rel="stylesheet">

		<!-- <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script> -->
		<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script> -->
		<style>
			* {
				margin: 0px;
				padding: 0px;
			}

			.foot {
				padding-top: 10px;
				position: fixed;
				bottom: 0;
				left: 0;
				width: 100%;
				background-color: white;
				/* height:50px; */

			}

			/* .navList{
				display: inline-block!important;
				padding: 0px;
			}
			.navList>a{
				padding: 0px !important;
			}
			#app{
				padding: 0px;
			} */
		</style>
		<script>

		</script>
	</head>
	<body>
		<div class="container">
			<div class="header  hidden-xs  hidden-sm visible-md visible-lg  text-right">
				<div class="col-xs-12 text-right">
					<ul class="nav navbar-nav navbar-right">
						<li><a data-toggle="modal" data-target="#register" href=""><span class="glyphicon glyphicon-user"></span> 注册</a></li>
						<li><a data-toggle="modal" data-target="#login" href=""><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
						<li><a  href="./MyAfterLogin.html"><span class="glyphicon glyphicon-th-list"></span> 个人中心</a></li>
						<li><a  href="./shoppingCart.html"><span class="glyphicon glyphicon-shopping-cart"></span>
								购物车</a></li>
					</ul>
				</div>
				<!-- 注册窗口 -->
				<div id="register" class="modal fade" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body">
								<button class="close" data-dismiss="modal">
									<span>&times;</span>
								</button>
							</div>
							<div class="modal-title">
								<h1 class="text-center">注册</h1>
							</div>
							<div class="modal-body">
								<form class="form-group" action="">
									<div class="form-group">
										<label for="">用户名</label>
										<input class="form-control" type="text" placeholder="6-15位字母或数字">
									</div>
									<div class="form-group">
										<label for="">密码</label>
										<input class="form-control" type="password" placeholder="至少6位字母或数字">
									</div>
									<div class="form-group">
										<label for="">再次输入密码</label>
										<input class="form-control" type="password" placeholder="至少6位字母或数字">
									</div>
									<div class="text-right">
										<button class="btn btn-primary" type="submit">提交</button>
										<button class="btn btn-danger" data-dismiss="modal">取消</button>
									</div>
									<a href="" data-toggle="modal" data-dismiss="modal" data-target="#login">已有账号？点我登录</a>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- 登录窗口 -->
				<div id="login" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body">
								<button class="close" data-dismiss="modal">
									<span>&times;</span>
								</button>
							</div>
							<div class="modal-title">
								<h1 class="text-center">登录</h1>
							</div>

							<div class="modal-body">
								<form class="form-group" action="">
									<div class="form-group">
										<label for="">用户名</label>
										<input class="form-control" type="text" placeholder="">
									</div>
									<div class="form-group">
										<label for="">密码</label>
										<input class="form-control" type="password" placeholder="">
									</div>
									<div class="text-right">
										<button class="btn btn-primary" type="submit"><a href="./MyAfterLogin.html"style="color:white">登录</a></button>
										<button class="btn btn-danger" data-dismiss="modal">取消</button>
									</div>
									<a href="" data-toggle="modal" data-dismiss="modal" data-target="#register">还没有账号？点我注册</a>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="index_body col-lg-12" style="width:100%">
				<!-- 轮播图 -->
				<div class="Carousel col-lg-12">
					<div id="carousel-example-generic  " class="carousel slide   text-center" data-ride="carousel" data-interval="2000">
						<!-- 指示器 -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<!-- 轮播图片及说明文字 -->
						<div class="carousel-inner  text-center" role="listbox">
							<div class="item active">
								<img src="./img/Carousel01.webp.jpg" alt="">
							</div>
							<div class="item">
								<img src="./img/Carousel02.webp.jpg" alt="">
							</div>
							<div class="item">
								<img src="./img/Carousel03.webp.jpg" alt="">
							</div>
						</div>

					</div>
				</div>



				<!-- 商品列表 -->
				<div class="goodList">
					<!--  导航条-->
					<div class="nav col-xs-12 text-center" id="app">
						<ul class="nav nav-pills nav-justified">
							<li role="presentation" v-for="n in navList" class="" v-bind:class="{'active':navId==n.id}" @mouseover="navOver(n.id)">
								<a href="#" style="color: black;">{{n.name}}</a>
							</li>
						</ul>
						<div class="row">
							<div class="col-sm-3" v-for="goods in navGoodsList" v-if="goods.typeId==navId">
								<div class="thumbnail">
									<a href=""><img :src="goods.pic"></a>
									<div class="caption">
										<p><a href="" style="color: black;">{{goods.name}}</a></p>
										<h4><a href="" style="color: black;">￥{{goods.price}}</a></h4>
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
			<div class="foot col-xs-12 visible-xs  visible-sm hidden-md hidden-lg">
				<div class="col-xs-4 text-left" style="color: red;">
					<span class="glyphicon glyphicon-home "></span>
					<h6><a href="./UserIndex.html" style="color: red;">首 页</a></h6>
				</div>
				<div class="col-xs-4 text-center">
					<span class="glyphicon glyphicon-shopping-cart"></span>
					<h6><a href="./shoppingCart.html" style="color: black;">购物车</a></h6>
				</div>
				<div class="col-xs-4 text-right" >
					
						<span class="glyphicon glyphicon-user"></span>
					
						<a href="./my.html" style="color: black;"><h6 >我 的</h6></a>
				</div>

			</div>
		</div>


		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
		<script src="/oneplus/WebContent/WEB-INF/view/js/jquery.js"></script>
		<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
		<script src="/oneplus/WebContent/WEB-INF/view/js/bootstrap.min.js"></script>
		<script src="/oneplus/WebContent/WEB-INF/view/js/vue.js"></script>
		<script>
			var app = new Vue({
				el: '#app',
				data: {
					navId: 1,
					navList: [{
						id: 1,
						name: '商品精选'
					}, {
						id: 2,
						name: '耳机'
					}, {
						id: 3,
						name: '壳/膜'
					}, {
						id: 4,
						name: '适配器/数据线'
					}, {
						id: 5,
						name: '套装'
					}, {
						id: 6,
						name: '生活馆'
					}],

					navGoodsList: [{
							id: 1,
							name: '三星(SAMSUNG)10000毫安时 原装移动电源 充电宝 银灰色 双向快充 便携轻薄 适用于安卓/苹果',
							pic: './img/a7.jpg',
							price: 45,
							typeId: 1
						}, {
							id: 2,
							name: '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片全面屏屏内指纹版手机8GB+128GB亮黑色全网通',
							pic: './img/a1.jpg',
							price: 45,
							typeId: 1
						}, {
							id: 3,
							name: '三星 Galaxy S10+ 8GB+128GB琉璃绿（SM-G9750）超感官全视屏骁龙855双卡双待全网通4G游戏手机',
							pic: './img/a6.jpg',
							price: 45,
							typeId: 1
						}, {
							id: 4,
							name: 'OPPO Reno 全面屏拍照手机 6G+256G 雾海绿 全网通 移动联通电信 双卡双待手机',
							pic: './img/a2.jpg',
							price: 45,
							typeId: 1
						},
						{
							id: 1,
							name: '三星(SAMSUNG)10000毫安时 原装移动电源 充电宝 银灰色 双向快充 便携轻薄 适用于安卓/苹果',
							pic: './img/a7.jpg',
							price: 45,
							typeId: 1
						}, {
							id: 2,
							name: '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片全面屏屏内指纹版手机8GB+128GB亮黑色全网通',
							pic: './img/a1.jpg',
							price: 45,
							typeId: 1
						}, {
							id: 3,
							name: '三星 Galaxy S10+ 8GB+128GB琉璃绿（SM-G9750）超感官全视屏骁龙855双卡双待全网通4G游戏手机',
							pic: './img/a6.jpg',
							price: 45,
							typeId: 1
						}, {
							id: 4,
							name: 'OPPO Reno 全面屏拍照手机 6G+256G 雾海绿 全网通 移动联通电信 双卡双待手机',
							pic: './img/a2.jpg',
							price: 45,
							typeId: 1
						},
						{
							id: 1,
							name: '三星(SAMSUNG)10000毫安时 原装移动电源 充电宝 银灰色 双向快充 便携轻薄 适用于安卓/苹果',
							pic: './img/a7.jpg',
							price: 45,
							typeId: 1
						}, {
							id: 2,
							name: '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片全面屏屏内指纹版手机8GB+128GB亮黑色全网',
							pic: './img/a1.jpg',
							price: 45,
							typeId: 1
						}, {
							id: 3,
							name: '三星 Galaxy S10+ 8GB+128GB琉璃绿（SM-G9750）超感官全视屏骁龙855双卡双待全网通4G游戏手机',
							pic: './img/a6.jpg',
							price: 45,
							typeId: 1
						}, {
							id: 4,
							name: 'OPPO Reno 全面屏拍照手机 6G+256G 雾海绿 全网通 移动联通电信 双卡双待手机',
							pic: './img/a2.jpg',
							price: 45,
							typeId: 1
						},
						{
							id: 1,
							name: '台电 30000毫安大容量Type-C输入移动电源充电宝 三USB输出快充 适用于苹果华为小米平板 ',
							pic: './img/a14.jpg',
							price: 45,
							typeId: 2
						}, {
							id: 2,
							name: '华为（HUAWEI）无线充电器 套装版 快充版 无线充快充 适用于Mate20 Pro/Mate20 RS等手机',
							pic: './img/a8.jpg',
							price: 45,
							typeId: 2
						}, {
							id: 3,
							name: '【自营原声版】维肯Air无线蓝牙耳机5.0迷你运动适用于安卓/华为/苹果oppo双耳ipods入耳式 ',
							pic: './img/a11.jpg',
							price: 45,
							typeId: 2
						}, {
							id: 4,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a3.jpg',
							price: 45,
							typeId: 2
						}, {
							id: 1,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a4.jpg',
							price: 45,
							typeId: 3
						}, {
							id: 2,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a5.jpg',
							price: 45,
							typeId: 3
						}, {
							id: 3,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a6.jpg',
							price: 45,
							typeId: 3
						}, {
							id: 4,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a7.jpg',
							price: 45,
							typeId: 3
						}, {
							id: 1,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a8.jpg',
							price: 45,
							typeId: 4
						}, {
							id: 2,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a9.jpg',
							price: 45,
							typeId: 4
						}, {
							id: 3,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a10.jpg',
							price: 45,
							typeId: 4
						}, {
							id: 4,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a11.jpg',
							price: 45,
							typeId: 4
						}, {
							id: 1,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a12.jpg',
							price: 45,
							typeId: 5
						}, {
							id: 2,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a13.jpg',
							price: 45,
							typeId: 5
						}, {
							id: 3,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a14.jpg',
							price: 45,
							typeId: 5
						}, {
							id: 4,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a15.jpg',
							price: 45,
							typeId: 5
						},
						{
							id: 1,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a16.jpg',
							price: 45,
							typeId: 6
						}, {
							id: 2,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a17.jpg',
							price: 45,
							typeId: 6
						}, {
							id: 3,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a18.jpg',
							price: 45,
							typeId: 6
						}, {
							id: 4,
							name: '北极绒 热水袋暖水袋暖手宝暖宝宝电暖宝电热宝 电暖贴身保暖',
							pic: './img/a19.jpg',
							price: 45,
							typeId: 6
						},
					]
				},
				methods: {
					navOver: function(i) {
						console.log(i);
						this.navId = i;
					}
				}
			});
		</script>
	</body>

</html>
