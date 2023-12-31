package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Operation;


@WebServlet("/add-prod-servlet")
public class AddProdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// パラメータ取得
		request.setCharacterEncoding("UTF-8");
		int count = Integer.parseInt(request.getParameter("count"));
		//String count = request.getParameter("count");
		System.out.println("count : " + count);

		// セッションオブジェクト取得
		HttpSession session = request.getSession();
		session.setAttribute("count", count);
		
		// カートへの商品追加処理
		Operation op = new Operation();
		op.addProd(count, session);

		// 転送先設定
		String url = "cart.jsp";
		
		// 転送
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
