package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import conectivity.MyDbConnection;
import model.Book;

public class BookDAO {

	MyDbConnection dbcon = new MyDbConnection();
	Connection con;
	PreparedStatement stmt;
	ResultSet rs;
	
	
	
	public int getBookId() {
		
		int bkid =0;
		
		con = dbcon.getMyConnection();
		
		try {
			stmt = con.prepareStatement("select bkid from BookMaster");
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				bkid = rs.getInt(1)+1;
			}
			else {
				bkid = 1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bkid;
	}
	
	public int addBook(Book book) {
		
		con = dbcon.getMyConnection();
		int bkstatus = 1;
		int insert_status = 0;
		try {
			
//			`bkid`, `bkname`, `bkpublication`, `bkauthor`, `bkqty`, `bkprice`, `bkstatus`
			stmt = con.prepareStatement("INSERT INTO BookMaster (bkname, bkpublication, bkauthor, bkqty, bkprice, bkstatus) VALUES (?,?,?,?,?,?)");
			
			stmt.setString(1, book.getBookName());
			stmt.setString(2, book.getBookPublication());
			stmt.setString(3, book.getBookAuthor());
			stmt.setInt(4, book.getBookQty());
			stmt.setFloat(5, book.getBookPrice());
			stmt.setInt(6, bkstatus);
			
			insert_status = stmt.executeUpdate();
			
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		return insert_status;
	}
	
	
	public List<Book> getAllBooks(){
		
		List<Book> bookList = new ArrayList<Book>();
		
		con = dbcon.getMyConnection();
		
		try {
			
			stmt = con.prepareStatement("select * from BookMaster where bkstatus = 1");
			
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				
				Book book = new Book();
				
				book.setBookId(rs.getInt(1));
				book.setBookName(rs.getString(2));
				book.setBookPublication(rs.getString(3));
				book.setBookAuthor(rs.getString(4));
				book.setBookQty(rs.getInt(5));
				book.setBookPrice(rs.getFloat(6));
				
				bookList.add(book);
				
			}
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		return bookList;
	}
	
	public int deleteBook(int bkId) {
		int delete_status = 0;
		
		con = dbcon.getMyConnection();
		
		try {
			
			stmt = con.prepareStatement("update BookMaster SET bkstatus = 0 where bkid =?");
			stmt.setInt(1, bkId);
			
			delete_status = stmt.executeUpdate();
			
		} catch (Exception e) {

		e.printStackTrace();
		}
		
		
		return delete_status;
	}
}
