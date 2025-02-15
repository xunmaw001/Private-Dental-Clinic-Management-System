<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 药品信息 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>药品信息</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form .layui-form-item .layui-form-select .layui-input {
						border: 1px solid #eee;
						border-radius: 0px;
						padding: 0 30px 0 10px;
						box-shadow: 0px 0px 0px #ccc;
						margin: 0;
						outline: none;
						color: #555;
						width: 120px;
						font-size: 14px;
						line-height: 40px;
						height: 40px;
					}
		
		/* lists */
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						transform: translate3d(0px, 10px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			
			<div id="breadcrumb">
				<span class="en">DATA SHOW</span>
				<span class="cn">药品信息展示</span>
			</div>

			<!-- 图文列表 -->
			<div class="recommend" :style='{"padding":"0","margin":"0px auto","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative"}'>

				<div class="category-2" :style='{"padding":"20px 20px 0","margin":"70px 0 0 7%","flexDirection":"column","background":"linear-gradient(80deg, rgba(151,36,152,1) 0%, rgba(32,173,158,1) 100%)","display":"flex","width":"240px","height":"auto","order":"2"}'>
					<div class="category-search" :index="-1" :style='swiperIndex == -1 ? {"cursor":"pointer","border":"8px solid #8dd4cc","margin":"0 0 10px 0","color":"#333","borderRadius":"0px","textAlign":"center","background":"#fff","width":"100%","lineHeight":"44px","fontSize":"14px"} : {"cursor":"pointer","margin":"0 0 10px 0","borderColor":"#ccc","color":"#333","textAlign":"center","borderImage":"linear-gradient(to right, #ddd, #eee) 1","borderRadius":"0px","background":"#fff","borderWidth":"8px","width":"100%","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"60px"}'>全部</div>
					<div class="category-search" :index="index" :style='swiperIndex == index ? {"cursor":"pointer","border":"8px solid #8dd4cc","margin":"0 0 10px 0","color":"#333","borderRadius":"0px","textAlign":"center","background":"#fff","width":"100%","lineHeight":"44px","fontSize":"14px"} : {"cursor":"pointer","margin":"0 0 10px 0","borderColor":"#ccc","color":"#333","textAlign":"center","borderImage":"linear-gradient(to right, #ddd, #eee) 1","borderRadius":"0px","background":"#fff","borderWidth":"8px","width":"100%","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"60px"}' v-for="(item,index) in categoryList" :key="index">
						{{categoryList[index]}}
					</div>
				</div>
					
				<form class="layui-form filter" :style='{"padding":"60px 7% 0","alignItems":"center","background":"none","display":"flex","width":"100%","justifyContent":"center","height":"auto"}'>

					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>药品名称</div>
						<input type="text" :style='{"border":"1px solid #eee","padding":"0 10px","boxShadow":"0px 0px 0px #ccc","margin":"0","outline":"none","color":"#555","borderRadius":"0px","width":"140px","fontSize":"14px","lineHeight":"40px","height":"40px"}' name="yaopinmingcheng" id="yaopinmingcheng" placeholder="药品名称" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>药品类型</div>
						<select name="yaopinleixing" id="yaopinleixing" lay-filter="yaopinleixing">
							<option value="">请选择</option>
							<option v-for="(item,index) in yaopinleixingOptions" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>

					<button :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 10px 0","borderColor":"#5bb450","color":"#fff","minWidth":"90px","outline":"none","borderRadius":"0px","background":"linear-gradient(90deg, rgba(151,36,152,1) 0%, rgba(32,173,158,1) 100%),#992298","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"42px","borderStyle":"solid","height":"42px"}' id="btn-search" type="button" class="layui-btn layui-btn-normal">
						<i :style='{"color":"#fff","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon layui-icon-search"></i>搜索
					</button>
					<button :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 4px 0 0","borderColor":"#fda100","color":"#fff","minWidth":"90px","outline":"none","borderRadius":"0px","background":"#20ad9e","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"42px","borderStyle":"solid","height":"42px"}' v-if="isAuth('yaopinxinxi','新增')" @click="jump('../yaopinxinxi/add.jsp')" type="button" class="layui-btn btn-theme">
						<i :style='{"color":"#fff","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe654;</i>添加
					</button>
				</form>
						
				<div :style='{"padding":"20px 7% 20px","margin":"20px 0 10px","background":"none","flex":"1","width":"calc(93% - 200px)","minWidth":"900px","order":"3"}' class="lists">
					<!-- 样式一 -->
					<div :style='{"padding":"0px 0 0 3% ","margin":"30px 0 0","overflow":"hidden","flexWrap":"wrap","background":"none","display":"block","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-1">
						<div :style='{"padding":"0px","boxShadow":"0px 0px 0px #e6e6e6","margin":"0 3% 20px 0","borderColor":"#ccc","display":"flex","float":"left","justifyContent":"space-between","borderRadius":"0px","flexWrap":"wrap","background":"none","borderWidth":"0 0 0px","width":"30%","position":"relative","borderStyle":"dashed","height":"auto"}' @click="jump('../yaopinxinxi/detail.jsp?id='+item.id)" v-for="(item,index) in dataList" :key="index" class="list-item animation-box">
							<img :style='{"cursor":"pointer","border":"0px solid #bdefb6","padding":"20px 20px","boxShadow":"0px 0px 0px #ccc","margin":"0 0 12px","objectFit":"cover","borderRadius":"8px","background":"url(http://codegen.caihongy.cn/20230131/6afa6fc6db7b4b62bd4e8f4a24f3975e.png) no-repeat center top / 100% 100%","display":"block","width":"100%","height":"280px"}' :src="item.tupian?baseurl+item.tupian.split(',')[0]:''">
							<div v-if="item.price" :style='{"padding":"4px 10px","margin":"0 auto","color":"red","textAlign":"center","width":"90%","lineHeight":"24px","fontSize":"14px","order":"2"}' class="price">￥{{Number(item.price).toFixed(2)}}</div>
							<div v-if="item.vipprice&&item.vipprice>0" :style='{"padding":"4px 10px","margin":"0 auto","color":"red","textAlign":"center","width":"90%","lineHeight":"24px","fontSize":"14px","order":"2"}' class="price">￥{{Number(item.vipprice).toFixed(2)}} 会员价</div>
							<div v-if="item.jf" :style='{"padding":"4px 10px","margin":"0 auto","color":"red","textAlign":"center","width":"90%","lineHeight":"24px","fontSize":"14px","order":"2"}' class="price">{{Number(item.jf).toFixed(0)}}积分</div>
							<div :style='{"cursor":"pointer","padding":"4px 0px","borderColor":"#8dd4cc","margin":"0 auto 10px","whiteSpace":"nowrap","color":"#333","textAlign":"center","overflow":"hidden","borderWidth":"0 0 0px","background":"linear-gradient(0deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","width":"90%","lineHeight":"30px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"dashed"}' class="name">{{item.yaopinmingcheng}}</div>
							<div :style='{"cursor":"pointer","padding":"4px 0px","borderColor":"#8dd4cc","margin":"0 auto 10px","whiteSpace":"nowrap","color":"#333","textAlign":"center","overflow":"hidden","borderWidth":"0 0 0px","background":"linear-gradient(0deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","width":"90%","lineHeight":"30px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"dashed"}' class="name">{{item.yaopinleixing}}</div>
							<div :style='{"cursor":"pointer","padding":"4px 0px","borderColor":"#8dd4cc","margin":"0 auto 10px","whiteSpace":"nowrap","color":"#333","textAlign":"center","overflow":"hidden","borderWidth":"0 0 0px","background":"linear-gradient(0deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","width":"90%","lineHeight":"30px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"dashed"}' class="name">价格:{{item.jiage}}</div>
							<div :style='{"cursor":"pointer","padding":"4px 0px","borderColor":"#8dd4cc","margin":"0 auto 10px","whiteSpace":"nowrap","color":"#333","textAlign":"center","overflow":"hidden","borderWidth":"0 0 0px","background":"linear-gradient(0deg, rgba(238,177,238,1) 0%, rgba(165,228,222,1) 30%, rgba(165,228,222,1) 100%)","width":"90%","lineHeight":"30px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"dashed"}' class="name">{{item.shengchanriqi}}</div>
						</div>
					</div>
					
				</div>
				
				
				<div class="pager" id="pager"></div>
				
			</div>
		</div>


		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					categoryList: [],

				        yaopinleixingOptions: [],
					baseurl: '',
					dataList: []
				},
				methods: {
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['form', 'layer', 'element', 'carousel', 'laypage', 'http', 'jquery','laydate', 'slider'], function() {
				var form = layui.form;
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;
				var laydate = layui.laydate;
                var slider = layui.slider;
				var limit = 12;
				vue.baseurl = http.baseurl;
				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						let swiperList = [];
						res.data.list.forEach(element => {
						  if (element.value != null) {
						    swiperList.push({
						      img: http.baseurl+element.value
						    });
						  }
						});
						vue.swiperList = swiperList;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '600px',
								anim: 'default',
								autoplay: 'true',
								interval: '5000',
								arrow: 'always',
								indicator: 'inside'
							});
						})
					}
				});
        			http.request(`option/yaopinleixing/yaopinleixing`,'get',{},(res)=>{
                			vue.yaopinleixingOptions = res.data
							vue.$nextTick(() => {form.render()})
        			});

				//类型查询
			      categoryList();
				//类型搜索
			      $(document).on("click", ".category-search", function(e){
					  vue.swiperIndex = $(this).attr('index')
				  pageList(e.target.innerText);
			      });

			      function categoryList() {
				  // 获取列表数据
				  http.request('option/yaopinleixing/yaopinleixing', 'get', {}, function(res) {
				    vue.categoryList = res.data
				  })

				}
			      var vCategory = '';


				// 分页列表
				pageList();

				// 搜索按钮
				jquery('#btn-search').click(function(e) {
					pageList();
				});

				function pageList(category) {
					var param = {
						page: 1,
						limit: limit
					}
				if(category!=null && category!='全部') {
					vCategory = category;
					if (jquery('#yaopinmingcheng').val()) {
						param['yaopinmingcheng'] = '';
					}
					if (jquery('#yaopinleixing').val()) {
						param['yaopinleixing'] = '';
					}
				}
				if(vCategory!='' && category!='全部') {
					param['yaopinleixing'] = category;
				}

			        if (jquery('#yaopinmingcheng').val()) {
			          param['yaopinmingcheng'] = jquery('#yaopinmingcheng').val() ? '%' + jquery('#yaopinmingcheng').val() + '%' : '';
			        }
			        if (jquery('#yaopinleixing').val()) {
			          param['yaopinleixing'] = jquery('#yaopinleixing').val() ? jquery('#yaopinleixing').val() : '';
			        }


				if (jquery('#yaopinmingcheng').val()) {
					param['yaopinmingcheng'] = jquery('#yaopinmingcheng').val() ? '%' + jquery('#yaopinmingcheng').val() + '%' : '';
				}  
				if (jquery('#yaopinleixing').val()) {
					param['yaopinleixing'] = jquery('#yaopinleixing').val() ? '%' + jquery('#yaopinleixing').val() + '%' : '';
				}  

					// 获取列表数据
					http.request('yaopinxinxi/list', 'get', param, function(res) {
						vue.dataList = res.data.list
						// 分页
						laypage.render({
							elem: 'pager',
							count: res.data.total,
							limit: limit,
							groups: 5,
							layout: ["count","prev","page","next","limit","skip"],
							prev: '上一页',
							next: '下一页',
							jump: function(obj, first) {
								param.page = obj.curr;
								//首次不执行
								if (!first) {
									http.request('yaopinxinxi/list', 'get', param, function(res) {
										vue.dataList = res.data.list
									})
								}
							}
						});
					})
				}
			});
		</script>
	</body>
</html>
