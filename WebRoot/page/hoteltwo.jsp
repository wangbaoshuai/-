<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
-->
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hoteltwo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
	<script src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
function move(){
	var daobj=document.getElementById("dadiv");
	var xiaobj=document.getElementById("xiao1div");
	daobj.scrollTop++;
	if(daobj.scrollTop>xiaobj.offsetHeight)
	daobj.scrollTop=0;
	}
	var temp_inter=setInterval("move()",35);
	function moveStop(){
		clearInterval(temp_inter);
		}
	function moveStart(){
		temp_inter=setInterval("move()",35);
		}	
    </script>
    <style type="text/css">
		.pagelist {padding:10px 0; text-align:center;}
		.pagelist ul li{float:left;}
		.pagelist span,.pagelist a{ border-radius:3px; border:1px solid #397BEA;display:inline-block; padding:5px 12px;}
		.pagelist a{ margin:0 3px;}
		.pagelist span.current{ background:#09F; color:#FFF; border-color:#09F; margin:0 2px;}
		.pagelist a:hover{background:#09F; color:#900; border-color:#09F; }
		.pagelist label{ padding-left:15px; color:#999;}
		.pagelist label b{color:red; font-weight:normal; margin:0 3px;}
		
		.gallery-grid h5{color: #900;font-weight: 300;}
		.gallerys h3{color: #FFF;font-weight: 300;}
		.gallery-grid a{border-radius:0px; border:4px solid #FFF;display:inline-block; padding:0px 1px;}
	
		</style>
    
   <style type="text/css">
   	 #dadiv{ width:380px; height:228px; border:solid 0px #999999; overflow:hidden}
   	 body{
	background: url(images/bg.jpg) ;
}
   </style>
	</head>
	<body >
		<!---start-Wrap--->
			<!---start-header--->
			<div class="header">
				<div class="wrap">
					<div class="header-top">
						<div class="logo">
							<a href="index.html"><img src="images/logo2.png" title="logo" /></a>
						</div>
						<div class="contact-info">
							<p class="phone">服务热线 : <a href="#">800-020-12345</a></p>
							<p class="gpa">定位服务 : <a href="page/map.jsp">View map</a></p>
							<p class="phone1"><a href="page/login.jsp">登录</a> &nbsp;&nbsp;&nbsp;
                           <a href="page/register.jsp">注册</a></p>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				<div class="header-top-nav">
					<div class="wrap">
						<ul>
							<li><a href="page/hotelone.jsp">酒店首页</a></li>
							<li><a href="findByPageHotel.action?nowpage=1">订房中心</a></li>
							<li><a href="findByPageMenu.action?nowpage=1">菜系信息</a></li>
							<li><a href="findNew.action?nowpage=1">新闻中心</a></li>
							<li><a href="page/hotelfour.jsp">留言中心</a></li>
							<li><a href="page/hotelnice.jsp">个人中心</a></li>
							<div class="clear"> </div>
						</ul>
					</div>
				</div>
			</div>
			<!---End-header--->
			<div class="clear"> </div>
			<!---start-content----->
			<div class="content" >
				<div class="wrap">
					<!----start-image-gallery----->
					<div class="gallerys">
					<h3>客房</h3>
					<div class="gallery-grids">
					 <s:iterator var="room" value="#session.roomList">
						<div class="gallery-grid">
							<a href="finddRoomDetail.action?rid=<s:property value="#room.RId"/>"><img src="room_images/<s:property value="#room.RImg"/>" alt="" width="400" height="150"></a>
							<s:property value="#room.RTitle"/>&nbsp;<img src="images/pic23.gif" alt="" >
							<p>客房房间号:&nbsp;&nbsp;<s:property value="#room.RId"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客房预付押金:&nbsp;&nbsp;<s:property value="#room.rdTotal"/>￥&nbsp;<img src="images/pic23.gif" alt="" ><br/>
							        客房类型:&nbsp;&nbsp;<s:property value="#room.rtype.trName"/>&nbsp;<img src="images/pic23.gif" alt="" >
							        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="finddRoomDetail.action?rid=<s:property value="#room.RId"/>" ><img src="images/left_more.jpg" alt="" width="35" height="18"></a>
							</p>
		
						</div>
						</s:iterator>
						<div class="clear"> </div>
					   </div>
					  <div class="clear"> </div>
					
					</div>
					<script type="text/javascript" src="js/jquery.lightbox.js"></script>
				    <link rel="stylesheet" type="text/css" href="css/lightbox.css" media="screen">
				  	
				    <div class="clear"> </div>
				    <div class="pagelist">
				     <center>
				     <div style="margin-left:500px";>
						<ul>
						   <c:forEach var="i" step="1" begin="1" end="${pages}">
							<li class="active"><a href="findByPageRoom.action?nowpage=${i}">${i}</a></li>
							</c:forEach>
							
						</ul>
					</div>
						</center>
					</div>
					
				</div>
					<!----start-image-gallery----->
				</div>
				<div class="clear"> </div>
		<!---start-copy-Right----->
		<div class="copy-tight" style="background-color:#C5C5C5;">
			<p>TengLongDaJiuDian &copy; 腾龙大酒店欢迎您的光临<a target="_blank" href="http://www.chinatenglong.com/"></a></p>
		</div>
		<!---End-copy-Right----->
			</div>
			<!---End-content----->
		</div>
		<!---End-Wrap--->
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

		