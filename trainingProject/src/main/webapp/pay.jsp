<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Cart" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>精算完了</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%@include file = "header-navi.jsp"%>

	<h2>精算完了</h2>

	<p>お買い上げ ありがとうございました。</p>

	<%
		List<Product> listProd;
		// セッションスコープから属性名payを取得してCart型にキャストして変数に代入する。
		Cart payData = (Cart) session.getAttribute("pay");
		// PayDataがnullの場合
		if (payData == null) {
			// ArrayListをインスタンス化して代入（初期上タイのリストをlistProdに代入）
			listProd = new ArrayList<Product>();
		// 上記以外の場合清算済みリストを取得してlistProdに代入
		} else {
			listProd = payData.getListProd();
		}
		// listProdの要素数が０より大きい場合
		if (listProd.size() > 0) {
	%>
			<table class="pay-list">
			<tr>
				<th>商品ID</th><th>商品名</th><th>価格</th>
			</tr>
	<%
			for (Product prod : listProd) {
	%>
				<tr>
					<td><%=prod.getId() %></td>
					<td><%=prod.getName() %></td>
					<td><%=prod.getPriceString() %></td>
				</tr>			
	<%
			}
	%>
			</table>
			<br>
			<p>合計：<%=payData.getTotalPriceString() %> になります。</p>

	<%
			// 精算済情報の削除
			session.removeAttribute("pay");
		} 
	%>

</body>
</html>