<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>商城管理系统</title>
    <!-- Bootstrap -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <style>
        .hide {
            display: none;
        }
    </style>
</head>

<body>
    <div id="myjite">
        <div class="row" style="background:rgb(37, 36, 36)">
            <div class="col-xs-6">
                <h4 style="color:white">一加管理系统</h4>
            </div>
            <div class="col-xs-6 text-right"></div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="row" style="background:#F4F4F4;height:40px">
                    <div style="height:5px;"></div>
                    <div class="col-xs-8">
                        <div style="height:5px;"></div>
                        <div>
                            <P><span class="glyphicon glyphicon-globe"></span><strong>商城管理</strong></P>
                        </div>
                    </div>
                   <div class="col-xs-4 text-right">
                       <div class="btn-group btn-group-sm" role="group" aria-label="...">
                           <button type="button" class="btn btn-default">新增</button>
                           <button type="button" class="btn btn-default">编辑</button>
                         
                       </div>
                       <div class="btn-group btn-group-sm" role="group" aria-label="...">
                           <button type="button" class="btn btn-default">刷新</button>
                           <button type="button" class="btn btn-default">导出</button>
                       	
                       </div>
                       <a href="./backIndex.html"><button type="button" class="btn btn-success">返回</button></a>
                   </div>
                </div>
                <div class="row" style="height:10px;"></div>
                <div class="row">
                    <div class="col-xs-3">
                        <div class="input-group input-group-sm">
                            <span class="input-group-addon" id="basic-addon1">商品编号</span>
                            <input type="text" class="form-control" placeholder="请输入商品编号"
                                aria-describedby="basic-addon1">
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="input-group input-group-sm">
                            <span class="input-group-addon" id="basic-addon1">商品状态</span>
                            <input type="text" class="form-control" placeholder="请选择" aria-label="...">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a href="#">上架</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">下架</a></li>
                                   
                                   
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="btn-group btn-group-sm" role="group" aria-label="...">
                            <button type="button" class="btn btn-default">搜索</button>
                           
                        </div>
                    </div>
                </div>
                <div class="row" style="height:10px;"></div>
                <div class="row">
                    <div class="col-xs-12">
                        <ul class="nav nav-tabs">
                            <li role="presentation" class="active"><a href="#">所有</a></li>
                            <li role="presentation"><a href="#">已上架</a></li>
                            <li role="presentation"><a href="#">未上架</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <table class="table table-striped table-bordered table-hover" id="table">
                            <thead>
                                <tr @click = "clickhead">
                                    <th><input type="checkbox" v-model="ischeckedhead" aria-label="..."></th>
                                    <th>商品编号</th>
                                    <th>商品名称</th>
                                    <th>单价</th>
                                    <th>总数</th>
                                    <th>详情</th>
                                    <th>类别</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                            <tbody v-for="o in orderlist">
                                <tr @click="click(o.id)" v-bind:class="{'danger':o.details=='审核失败','success':o.details=='审核成功','info':o.details=='等待审核'}">
                                    <td><input type="checkbox" v-model="o.ischecked" aria-label="..."></td>
                                    <td>{{o.commodity_number}}</td>
                                    <td>{{o.commodity_name}}</td>
                                    <td>{{o.commodity_price}}</td>
                                    <td>{{o.commodity_quantity}}</td>
                                    <td>{{o.details}}</td>
                                    <td>{{o.classification}}</td>
                                    <td style="color:red" v-bind:class="{'hide':o.state!='下架'}">{{o.state}}</td>
                                    <td style="color:green" v-bind:class="{'hide':o.state!='上架'}">{{o.state}}</td>
                                  
                                
                
                                   <td>
                                        <a @click="click(o.commodity_number)" href="#" v-bind:class="{'hide':o.state!='下架'}">编辑</a>
                                        <a @click="click(o.commodity_number)" href="#" v-bind:class="{'hide':o.state!='下架'}">上架</a>
                                        <a @click="click(o.commodity_number)" href="#" v-bind:class="{'hide':o.state=='上架'}">查看</a>
                                     
                                        <a @click="click(o.commodity_number)" href="#">删除</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row" style="height:5px"></div>
                <div class="row">
                    <div class="col-xs-3">
                        <div class="input-group input-group-sm">
                            <span class="input-group-addon" id="basic-addon1">共{{line}}行</span>
                            <input type="text" class="form-control" placeholder="请输入每页行数"
                                aria-describedby="basic-addon1">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">Do!</button>
                            </span>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="row text-center">
                            <span class="btn-group btn-group-sm">
                                <button class="btn btn-default" type="button">&laquo;</button>
                            </span>
                            第{{page}}页
                            <span class="btn-group btn-group-sm">
                                <button class="btn btn-default" type="button">&raquo;</button>
                            </span>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="input-group input-group-sm">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">首页</button>
                            </span>
                            <input type="text" class="form-control" placeholder="Search for...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">Go!</button>
                            </span>
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">尾页</button>
                            </span>
                        </div>
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
                    commodity_number: '1',
                    commodity_name: '傻妞',
                    commodity_price : '100',
                    commodity_quantity: '1',
                    details: '华人牌',
                    classification: '女朋友',
                    state: '下架',
                    ischecked: false
                }], 
            },
            methods: {
                clickhead:function() {
                    if(this.ischeckedhead){
                        this.ischeckedhead=false;
                    }else{
                        this.ischeckedhead=true;
                    }
                },
                click:function(id){
                    var o = this.orderlist;
                    for(var i = 0; i < o.length; i++){
                        if(o[i].id == id){
                            if(o[i].ischecked){
                                o[i].ischecked=false;
                            }else{
                                o[i].ischecked=true;
                            }
                        }
                    }
                    var num =0;
                    for(var i = 0; i < o.length; i++){
                        if(o[i].ischecked == true){
                            num = num + 1;
                        }
                    }
                    if(num == o.length){
                        this.ischeckedhead=true;
                    }
                }
            },
            watch: {
                ischeckedhead: function () {
                    var o = this.orderlist;
                    if (this.ischeckedhead == true) {
                        for (var i = 0; i < o.length; i++) {
                            o[i].ischecked = true;
                        }
                    } else{
                        var Number = 0;
                        for (var i = 0; i < o.length; i++) {
                            if(o[i].ischecked == false){
                                Number = Number + 1;
                            }                          
                        }
                        if(Number==0){
                            for (var i = 0; i < o.length; i++) {
                            o[i].ischecked = false;
                        }
                        }
                    }
                },
                orderlist:{
                    handler:function(){
                        var o = this.orderlist;
                        for(var i = 0; i < o.length; i++){
                            if(o[i].ischecked == false){
                                this.ischeckedhead=false;
                            }
                        }
                    },
                    deep:true
                }
            }
            
        })
    </script>
</body>

</html>