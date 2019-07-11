<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>查找到的商品</title>
    <link href="css/base.css" type="text/css" rel="stylesheet"/>
     <style rel="stylesheet">
        /*清除浮动部分*/
        .clearfix:before,.clearfix:after{
            content:"";
            display:table;
        }
        .clearfix:after{
            clear:both;
        }
        .clearfix{
            *zoom:1;
        }
        *{
            margin: 0;
            padding: 0;
        }
        #goods_shouye{
            height: auto;
            width: 1226px;
            margin:10px auto;
            padding-top:10px;
            border: 1px solid #ff6700;
            box-sizing: border-box;
            background-color: #f5f5f5;
        }
        .goods_query li{
            width: 232.8px;
            height: 300px;
            background-color: #fff;
            float: left;
            margin-right: 15px;
            margin-bottom: 15px;
            overflow: hidden;
            border: 1px solid #ff6700;
            box-sizing: border-box;
            transition: all 0.5s;
        }
        .goods_query li:hover{
            box-shadow: 2px 2px 10px rgba(0, 0, 0, .3);
            transform: translateY(-10px);
        }
        .goods_query li:nth-child(5n){
            margin-right: 0;
        }
        .goods_query li .good-pic{
            width: 190px;
            height: 200px;
            background-color: #9d9d9d;
        }
        .goods_query li .good-pic img{
            display: block;
            width: 200px;
            height: 200px;
            text-algin:center;
        }

        .goods_query li .title {
            display: block;
            margin: 0 auto;
            text-align: center;
            font-size: 14px;
        }
        .goods_query li .desc{
            display: block;
            width: 188px;
            height: 16px;
            margin: 0 auto;
            text-align: center;
            font-size: 12px;
            color: #b0b0b0;
            overflow: hidden;
        }
        .goods_query li .price{
            text-align: center;
            margin-top: 10px;
            color: #ff6700;
        }
    </style>
    <script type="text/javascript" href="js/jquery-3.4.3.js"></script>
    <script type="text/javascript">
    	/*$(function(){
        	resuo();
    	});
    	function resuo() {
   		
            $.ajax({
                //几个参数需要注意一下
                type: "GET",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "http://localhost/ssmstudy/main.jsp",//url
                success: function (result) {
                    //取出后端传过来的list值
                    var chargeRuleLogs = result.data
                    //对list值进行遍历
                    if (!chargeRuleLogs.result) {
                        var rowTr = document.getElementById("goods_shouye");
                        //找到html的tr节点
                        rowTr.className = "goods_shouye";
                        var ch = "";
                        $.each(chargeRuleLogs, function (index, n) {
                            ch = ch + 
                            "<div class=\"googs1\">"+
                            	"<div class=\"good-pic\"><a href=\"goods.html\" ><img src=\"images/homeelc3.jpg\" alt=\"小米壁画电视65英寸\"></a></div>"+
                            	"<span class=\"title\">chargeRuleLogs[index].goods_name<a href=\"#\"></a></span>"+
                            	"<p class=\"desc\">骁龙855，索尼4800万超广角微距三摄</p>"+
                            	"<div class=\"price\">"+
                                	"<span class=\"num\">chargeRuleLogs[index].goods_price</span>元"+
                            	"</div>"+
                        	"</div>";  
                        });
                        //将要展示的信息写入页面
                        rowTr.innerHTML = ch
                    } else {
                        alert(chargeRuleLogs.msg);
                    }
                },
                error: function () {
                    alert("网络连接异常！");
                }
            });
    	}*/

    </script>
    <script type="text/javascript">
		function validateform(){
			return true;
		}
	</script>
<body>
<!--商城头部-->
    <%@ include file="header.jsp"%> 
    <!-- 导航栏与搜索部分 -->
    <%@ include file="searchBar.jsp"%> 
    <!-- 查找到的商品部分 -->
	<div id="goods_shouye" class="goods_query clearfix">
    <ul class="goods">
        <li>      	
            <div class="good-pic"><a href="goods?goods_detail=info&gid=${goods.gid}" ><img src="images/homeelc3.jpg" alt="小米壁画电视65英寸"></a></div>
            <span class="title">${goods.gname}<a href="#"></a></span>
            <p class="desc">${goods.spec}</p>
            <div class="price">
                <span class="num">${goods.up}</span>元
            </div>
           
        </li>
        <li>
            <div class="good-pic"><a href="goods.html" ><img src="images/goods5.jpg" alt="小米壁画电视65英寸"></a></div>
            <span class="title">小米壁画电视65英寸<a href="#"></a></span>
            <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
            <div class="price">
                <span class="num">${goods.up}</span>元
            </div>
        </li>
        <li>
            <div class="good-pic"><a href="goods.html" ><img src="images/goods2.jpg" alt="小米壁画电视65英寸"></a></div>
            <span class="title">小米壁画电视65英寸<a href="#"></a></span>
            <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
            <div class="price">
                <span class="num">6999</span>元
            </div>
        </li>
        <li>
            <div class="good-pic"><a href="goods.html" ><img src="images/goods3.jpg" alt="小米壁画电视65英寸"></a></div>
            <span class="title">小米壁画电视65英寸<a href="#"></a></span>
            <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
            <div class="price">
                <span class="num">6999</span>元
            </div>
        </li>
        <li>
            <div class="good-pic"><a href="goods.html" ><img src="images/goods4.png" alt="小米壁画电视65英寸"></a></div>
            <span class="title">小米壁画电视65英寸<a href="#"></a></span>
            <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
            <div class="price">
                <span class="num">6999</span>元
            </div>
        </li>
    </ul>
</div>

<%@ include file="footer.jsp"%>
</body>
</html>