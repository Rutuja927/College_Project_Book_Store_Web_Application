package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
import model.Book;
@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			int bkid = Integer.parseInt(request.getParameter("bkId"));
			String bkname = request.getParameter("bkName");
			String bkpublication = request.getParameter("bkPublication");
			String bkauthor = request.getParameter("bkAuthor");
			
			float bkprice = Float.parseFloat(request.getParameter("bkPrice"));
			int bkqty = Integer.parseInt(request.getParameter("bkQty"));
			
			Book book = new Book();
			book.setBookId(bkid);
			book.setBookName(bkname);
			book.setBookAuthor(bkauthor);
			book.setBookPublication(bkpublication);
			book.setBookQty(bkqty);
			book.setBookPrice(bkprice);
			
			
			
			BookDAO dao = new BookDAO();
			
			int insert_status = dao.addBook(book);
			
			if(insert_status == 10) {
				request.setAttribute("msg", "Book's Added Successfully !!!");
				RequestDispatcher rd = request.getRequestDispatcher("ViewBook.jsp");
				rd.include(request, response);
			}
			else {
				request.setAttribute("msg", "Book's Add Faild !!!");
				RequestDispatcher rd = request.getRequestDispatcher("ViewBook.jsp");
				rd.include(request, response);
			}
	}

}
