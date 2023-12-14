<%@page import="control.AddProdServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Cart" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カート内一覧</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

	<%@include file = "header-navi.jsp"%>

	<h2>カート内一覧</h2>
	<br>
	<%
		int total = 0;//合計金額
		int count = (int)session.getAttribute("count");
		List<Product> listProd;
		Cart cart = (Cart) session.getAttribute("cart");
		Map<String, String> map = (Map) session.getAttribute("map");
		if (cart == null) {
			listProd = new ArrayList<Product>();
		} else {
			listProd = cart.getListProd();
		}
		if (listProd.size() > 0) {
			//合計金額を計算
			for (int idx = 0; idx < listProd.size(); idx++) {
				Product prod = listProd.get(idx);
				total += prod.getPrice();
			}
	%>
			<h3 style="color: #990000">合計金額 <%=String.format("%,d", total) %>円</h3><%--3桁ごとにカンマが入るようにしている --%>
			<table class="cart-list">
	<%
			//カート内商品表示
			for (int idx = 0; idx < listProd.size(); idx++) {
				Product prod = listProd.get(idx);
	%>
				<tr style="backgroud-color:white">
					<td><img alt="" src=<%=map.get(prod.getId()) %> width="150" height="105"></td>
					<td><%=prod.getId() %></td>
					<td><%=prod.getName() %></td>
					<td><%=prod.getPriceString() %></td>
					
					<td>
						<form action="remove-prod-servlet" method="POST">
							<input type="hidden" name="idx" value="<%=idx%>">
							<input type="submit" value="削除">
						</form>
					</td>
				</tr>
	<%
			}
	%>
			</table>
			<br>
			<form action="pay-servlet" method="post">
				<input type="submit" value="精算"><br>
			</form>
			<br>
				
	<%
		} else {
	%>
			<p>カートの中は空です。</p>
	<%
		}
	%>

</body>
</html>