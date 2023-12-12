<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Store" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品選択</title>
<link rel="stylesheet" href="style.css" >
</head>
<body>
	
	<%@include file = "header-navi.jsp"%>
	 
	<%
	List<model.Product> listProd;
	model.Store store = (model.Store) session.getAttribute("store");
	String[] images = {"./images/sofa1.jpg", "./images/sofa2.jpg", "./images/sofa3.jpg",
						"./images/bed1.jpg", "./images/bed2.jpg", "./images/bed3.jpg",
						"./images/cushion1.jpg", "./images/cushion2.jpg", "./images/cushion3.jpg"};
	int count = 0; //画像を表示させるため、imagesの引数に渡す変数
	if (store == null) {
		listProd = new ArrayList<model.Product>();
	} else {
		listProd = store.getListProd();
	}
	if (listProd.size() > 0) {
	%>
	
			<h2>インテリアマーケット</h2>
			<hr>
			<form action="add-prod-servlet" method="POST">
				<%
					for(int idx = 0; idx < listProd.size()/3; idx++){
						
				%>
				<div id="cards">
				<%
						for(int num = 0; num < 3; num++){
							Product prod = listProd.get(count);
				%>
					<div class="card">
						<div class="picture"><img alt="" src=<%=images[count] %> width="300" height="200"></div>
					    	
	    				<div class="description">
      						<p><%=prod.getName() %>　<%=prod.getPriceString() %> <%=count %></p>
   	  						<p>
   	  							<input type="hidden" name="count" value="<%=count%>">
   	  							<input type="submit" value="選択">
   	  						</p>
    					</div>
  					</div>
  				<%
  						count++;
						}
  				%>
  				</div>
				<br>
				<%
					}
				%>
		
			<%
				}
			%> 
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