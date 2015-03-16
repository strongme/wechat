<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="decorator" content="default" />
<title>Categories</title>
</head>
<body>
	<div class="jumbotron">
		<h1>
			Hello Succulents <small>多肉植物图鉴</small>
		</h1>
	</div>
	<div class="row">
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<img
					src=http://www.yuhuagu.com/uploads/allimg/140502/43-140502100552.jpg
					alt="...">
				<div class="caption text-center">
					<h3>红色毛汉尼</h3>
					<p>
						红色毛汉尼为番杏科肉锥属多肉植物，是毛汉尼里的园艺栽培品种，植株表面是凸起的不透明球状，窗口上有凸起的半透明小点点，阳光下窗会比较漂亮，肉质叶片的中间有一个凹槽，是开花的窗口。红色毛汉尼植株不高，比较胖，不是非常容易群生，整个植株看起来非常的可人。红色毛汉尼每年1脱1~2头，养的不好容易死亡，或者会死去几个头，花开淡白色。异花授粉，昼开型。
					</p>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<img
					src=http://www.yuhuagu.com/uploads/allimg/140427/43-14042FR324.jpg
					alt="...">
				<div class="caption text-center">
					<h3>白鹭</h3>
					<p>
						白鹭景天科青锁龙属多肉植物，白鹭叶片对生，叶片长的象长三角型。叶片肥厚。叶片表面密密排列白色小颗粒，看起来象白色的粉，有不规则的凹点，就象人工用尖的东西在叶片上扎出来的一个一个小孔。白鹭花开纯白色，五角星型的花瓣。授粉必须是异花受粉。繁殖方法有播种和分株、砍头
					</p>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<img
					src=http://www.yuhuagu.com/uploads/allimg/140323/43-140323213Q2.jpg
					alt="...">
				<div class="caption text-center">
					<h3>红化妆</h3>
					<p>
						红化妆景天科拟石莲花属多年生肉质植物，是多茎莲与静夜杂交种，叶绿色，披白粉，边缘红色，在阳光充足的条件下红色较明显，春秋两季为生长期，夏没有休眠期，需适当遮阴，阳光充足条件下植株生长旺盛，冬季栽于阳光充足的室内。
					</p>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<img
					src=http://www.yuhuagu.com/uploads/allimg/140301/43-1403010P548.jpg
					alt="...">
				<div class="caption text-center">
					<h3>凌波仙子</h3>
					<p>凌波仙子026为景天科拟石莲花属多肉植物，是最近非常流行火爆的026。多为韩国输入价格居高不下。
						凌波仙子形态：小型群生品种，老株茎干会不断升高，叶子灰绿色，叶子圆匙型，叶缘纯红色，有叶尖。凌波仙子养护：春秋是生长期，喜全日照。夏天会休眠，通风遮阳，每周可以在土表喷上少量的水，防止根死亡。冬天温度要逐渐断水，保持盆土干燥，提高植株抗寒能力。
						凌波仙子繁殖：易群生，可以在换盆时进行分株繁殖。</p>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$('ul .nav li').removeClass('active');
			$('.categories').addClass('active');
		});
	</script>
</body>
</html>