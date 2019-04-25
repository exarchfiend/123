<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>仓库管理系统</title>
		<!-- Bootstrap -->
		<link href="./css/bootstrap.min.css" rel="stylesheet">
		<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
		<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
		<!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
		<style>
			.hide{
            display: none;
        }  
    </style>
	</head>

	<body>
		<div id="myjite">
			<div class="row" style="background:rgb(37, 36, 36)">
				<div class="col-xs-6">
					<h4 style="color:white">手机商城管理系统</h4>
				</div>
				<div class="col-xs-6 text-right">
					<h4><a href="./backIndex.html" style="color:white">返回</a></h4>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="row" style="background:#F4F4F4;height:40px">
						<div style="height:5px;"></div>
						<div class="col-xs-8">
							<div style="height:5px;"></div>
							<div>
								<P><span class="glyphicon glyphicon-globe"></span><strong>商品分类</strong></P>
							</div>
						</div>
						<div class="col-xs-4 text-right">
							<div class="btn-group btn-group-sm" role="group" aria-label="...">
								<a data-toggle="modal" data-target="#warning" href="" style="color: black;"><button type="button" class="btn btn-default">新增</button></a>
								<a data-toggle="modal" data-target="#warning" href="" style="color: black;"><button type="button" class="btn btn-default">修改</button></a>
							</div>

						</div>
						<div id="warning" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-body">
										<button class="close" data-dismiss="modal">
											<span>&times;</span>
										</button>
									</div>
									<div class="modal-title">
										<h1 class="text-center">温馨提示：</h1>
									</div>

									<div class="modal-body">
										<form class="form-group" action="">
											<h4>该功能暂未开启，敬请期待</h4>
											<div class="text-right">
												<button class="btn btn-primary" type="submit"><a href="" style="color: white;">确定</a></button>
												<button class="btn btn-danger" data-dismiss="modal">取消</button>
											</div>

										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row" style="height:10px;"></div>
					
					<div class="row" style="height:10px;"></div>

					<div class="row">
						<div class="col-xs-12">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>序号</th>
										<!-- {{ischeckedhead}} -->
										<th>分类</th>
										
									</tr>
								</thead>
								<tbody v-for="o in orderlist">
									<tr v-bind:class="{'danger':o.details=='审核失败','success':o.details=='审核成功','info':o.details=='等待审核'}">
										<td>{{o.id}}</td>
										<td>{{o.clazz}}</td>
										

									</tr>
								</tbody>
							</table>
						</div>
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
			var jitevue = new Vue({
				el: "#myjite",
				data: {
					ischeckedhead: false,
					line: 9,
					page: 1,
					orderlist: [{
						id:'1',
						clazz: '精选商品',
						},{
						id:'2',
						clazz: '手机',
						},{
						id:'3',
						clazz: '壳/膜',
						},{
						id:'4',
						clazz: '适配器/数据线',
						},{
						id:'5',
						clazz: '套装',
						},{
						id:'6',
						clazz: '生活馆',
						},]
				},
				method: {},
				watch: {
					ischeckedhead: function() {
						var o = this.orderlist;
						if (this.ischeckedhead == true) {
							for (var i = 0; i < o.length; i++) {
								o[i].ischecked = true;
							}
						} else {
							for (var i = 0; i < o.length; i++) {
								o[i].ischecked = false;
							}
						}
					},
					orderlist: function() {

					}
				}
			})
		</script>
	</body>

</html>
    