<%@ page pageEncoding="UTF-8"%>
<%@ page import="model.Cart" %>
<%@ page import="model.Store" %>


	<%--店舗名・ユーザー名表示 --%>
	<%
		Store storehdr = (Store) session.getAttribute("store");
		Cart carthdr = (Cart) 	session.getAttribute("cart");
		if(storeHdr = null) || cartHdr = null ){
			request.setAttribute("errorMsg","再度ログインをお願いします。");
			request.getRequestDispacther("login.jsp").forward(request.response);
		} else{
	%>
			<h1><%=storeHdr.getName() %></h1>
			<hr>
			ユーザーID：<%=cartHdr.getUseId %>
			<hr>

			<%--ナビ表示--%>
			<a href="select.jsp">商品選択</a>
			<a href="cart.jsp">カート内一覧</a>
			<a href="logout-servlet.jsp">ログアウト</a>
			<hr>	
	<%
		}
	%>