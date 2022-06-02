package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
@WebServlet("/deleteBookServlet")
public class deleteBookServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int bkid = Integer.parseInt(request.getParameter("bkId"));
		
		BookDAO dao = new BookDAO();
		
		int delete_status = dao.deleteBook(bkid);
		
		
		if(delete_status == 1) {
			request.setAttribute("msg", "Book's Deleted Successfully !!!");
			RequestDispatcher rd = request.getRequestDispatcher("ViewBook.jsp");
			rd.include(request, response);
		}
		else {
			request.setAttribute("msg", "Book's Deletion Faild !!!");
			RequestDispatcher rd = request.getRequestDispatcher("ViewBook.jsp");
			rd.include(request, response);
		}
	}

}
