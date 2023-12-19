<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Store" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="java.util.Collection" %>

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
	
	//Map(商品ID, 商品画像のパス)
	//格納した順に値を取得したいため、LinkedHashMap
	Map<String, String> map = new LinkedHashMap<String, String>(){
		{
			put("A110", "./images/sofa1.jpg"); put("A120", "./images/sofa2.jpg"); put("A130", "./images/sofa3.jpg");
			put("A140", "./images/bed1.jpg"); put("A150", "./images/bed2.jpg"); put("A160", "./images/bed3.jpg");
			put("A170", "./images/cushion1.jpg"); put("A180", "./images/cushion2.jpg"); put("A190", "./images/cushion3.jpg");
		}
	};
	//mapから値(商品画像のパス)を取り出す
	List<String> images = new ArrayList<>();
	for(String val : map.values()){
		images.add(val);
	}
	session.setAttribute("map", map);
	
	int count = 0; //画像を表示させるため、imagesの引数に渡す変数
	if (store == null) {
		listProd = new ArrayList<model.Product>();
	} else {
		listProd = store.getListProd();
	}
	if (listProd.size() > 0) {
	%>
			
				<%
					for(int idx = 0; idx < listProd.size()/3; idx++){
						
				%>
				<div id="cards">
				<%
						for(int num = 0; num < 3; num++){
							Product prod = listProd.get(count);
				%>
				<form action="add-prod-servlet" method="POST">
					<div class="card">
						<div class="picture"><img alt="" src=<%=images.get(count) %> width="300" height="200"></div>
					    	
	    				<div class="description">
      						<p><%=prod.getName() %>　<%=prod.getPriceString() %></p>
   	  						<p>
   	  							<input type="hidden" name="count" value=<%=count%>><%--count送信出来てるか確認 --%>
   	  							<input type="submit" value="選択">
   	  						</p>
    					</div>
  					</div>
  				</form>
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
			
		<%@include file = "footer.jsp"%>	
		
		
</body>
</html>