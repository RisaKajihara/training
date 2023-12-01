<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- 
<%@ page import="model.Store" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品選択</title>
<link rel="stylesheet" href="style.css" >
</head>
<body>
	<%--
	<%@include file = "header-navi.jsp"%>
	 --%>
	
	<%-- 
	<%
		List<Product> listProd;
		Store store = (Store) session.getAttribute("store");
		if (store == null) {
			listProd = new ArrayList<Product>();
		} else {
			listProd = store.getListProd();
		}
		if (listProd.size() > 0) {
	%>
	--%>
			<h2>インテリアマーケット</h2>
			<hr>
			<form action="add-prod-servlet" method="POST">
				<!-- ここからソファ -->
				<div id="cards">
  					<div class="card">
				    	<div class="picture"><img alt="" src="./images/sofa1.jpg" width="300" height="200"></div>
	    				<div class="description">
    	  					<p>ソファ　9,980円</p>
    	  					<p><input type="submit" value="選択"></p>
    					</div>
  					</div>
 	 				<div class="card" id="card-center">
    					<div class="picture"><img alt="" src="./images/sofa2.jpg" width="300" height="200"></div>
    					<div class="description">
      						<p>ソファ　14,980円</p>
      						<p><input type="submit" value="選択"></p>
    					</div>
 	 				</div>
  					<div class="card">
    					<div class="picture"><img alt="" src="./images/sofa3.jpg" width="300" height="200"></div>
    					<div class="description">
      						<p>ソファ　7,480円</p>
      						<p><input type="submit" value="選択"></p>
	    				</div>
  					</div>
				</div><!-- ここまでソファ -->
				
				<br><!-- ここからベッド -->
				<div id="cards">
  					<div class="card">
				    	<div class="picture"><img alt="" src="./images/bed1.jpg" width="300" height="200"></div>
	    				<div class="description">
    	  					<p>ベッド　9,980円</p>
    	  					<p><input type="submit" value="選択"></p>
    					</div>
  					</div>
 	 				<div class="card" id="card-center">
    					<div class="picture"><img alt="" src="./images/bed2.jpg" width="300" height="200"></div>
    					<div class="description">
      						<p>ベッド　14,980円</p>
      						<p><input type="submit" value="選択"></p>
    					</div>
 	 				</div>
  					<div class="card">
    					<div class="picture"><img alt="" src="./images/bed3.jpg" width="300" height="200"></div>
    					<div class="description">
      						<p>ベッド　7,480円</p>
      						<p><input type="submit" value="選択"></p>
	    				</div>
  					</div>
				</div><!-- ここまでベッド -->
				
				<!-- ここからクッション -->
				<br>
				<div id="cards">
  					<div class="card">
				    	<div class="picture"><img alt="" src="./images/cushion1.jpg" width="300" height="400"></div>
	    				<div class="description">
    	  					<p>クッション2つセット　980円</p>
    	  					<p><input type="submit" value="選択"></p>
    					</div>
  					</div>
 	 				<div class="card" id="card">
    					<div class="picture"><img alt="" src="./images/cushion2.jpg" width="300" height="400"></div>
    					<div class="description">
      						<p>クッション3つセット　1,480円</p>
      						<p><input type="submit" value="選択"></p>
    					</div>
 	 				</div>
  					<div class="card">
    					<div class="picture"><img alt="" src="./images/cushion3.jpg" width="300" height="400"></div>
    					<div class="description">
      						<p>クッション2つセット　1,180円</p>
      						<p><input type="submit" value="選択"></p>
	    				</div>
  					</div>
				</div><!-- ここまで椅子 -->
			</form>
			
			
			
<%-- 
			<table class="select-list">
			<tr>
				<th></th><th>商品ID</th><th>商品名</th><th>価格</th>
			</tr>--%>
			
	
	<%-- 			
	<%
			for (int idx = 0; idx < listProd.size(); idx++) {
				Product prod = listProd.get(idx);
	%>
	--%>
	
	<%-- 
	
				<tr>
					<td>
						<form action="add-prod-servlet" method="POST">
							<input type="hidden" name="idx" value="<%=idx%>">
							<input type="submit" value="選択">
						</form>
					</td>
					<td><%=prod.getId() %></td>
					<td><%=prod.getName() %></td>
					<td><%=prod.getPriceString() %></td>
				</tr>			
	<%
			}
	%>--%>
			<%-- </table>--%>
			
			

	<%-- 
	<%
		}
	%>
	--%>
</body>
</html>