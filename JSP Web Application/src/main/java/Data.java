

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
@MultipartConfig
@WebServlet("/insert")
public class Data extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("pid"));
		String name=req.getParameter("pname");
		String desc=req.getParameter("pdesc");
		double price=Double.parseDouble(req.getParameter("pprice"));
		Part file=req.getPart("pimg");
		String select=req.getParameter("select");
		
		String imageFileName=file.getSubmittedFileName();
		System.out.println("Selected image file name: "+imageFileName);
		
		
		if("AAC Block".equals(select)) {
			String uploadPath="C:/Users/raj55/Desktop/JSP/JSP Web Application/src/main/webapp/Images/"+imageFileName;
			System.out.println("Upload Path: "+uploadPath);
			
			PrintWriter out=resp.getWriter();
			
			try {
				FileOutputStream fos=new FileOutputStream(uploadPath);
				InputStream is=file.getInputStream();
				
				byte data[]=new byte[is.available()];
				is.read(data);
				fos.write(data);
				fos.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			Connection con=null;
			PreparedStatement pstmt=null;
			try {
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Jadhav@2312");
				pstmt=con.prepareStatement("insert into block.product_info values(?,?,?,?,?)");
				pstmt.setInt(1,id);
				pstmt.setString(2,name);
				pstmt.setString(3,desc);
				pstmt.setDouble(4, price);
				pstmt.setString(5,imageFileName);
				int row=pstmt.executeUpdate();
				
				if(row>0) {
					resp.sendRedirect("./Insert_Product.jsp?msg=success");

				}
				else {
					out.println("Failed to Upload Data....");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
			
		else if("Cement".equals(select)) {
				String uploadPath="C:/Users/raj55/Desktop/JSP/JSP Web Application/src/main/webapp/Images/"+imageFileName;
				System.out.println("Upload Path: "+uploadPath);
				
				PrintWriter out=resp.getWriter();
				
				try {
					FileOutputStream fos=new FileOutputStream(uploadPath);
					InputStream is=file.getInputStream();
					
					byte data[]=new byte[is.available()];
					is.read(data);
					fos.write(data);
					fos.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				Connection con=null;
				PreparedStatement pstmt=null;
				try {
					
					Class.forName("com.mysql.cj.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Jadhav@2312");
					pstmt=con.prepareStatement("insert into cement.product_info values(?,?,?,?,?)");
					pstmt.setInt(1,id);
					pstmt.setString(2,name);
					pstmt.setString(3,desc);
					pstmt.setDouble(4, price);
					pstmt.setString(5,imageFileName);
					int row=pstmt.executeUpdate();
					
					if(row>0) {
						resp.sendRedirect("./Insert_Product.jsp?msg=success");

					}
					else {
						out.println("Failed to Upload Data....");
					}
					
				} catch (Exception e) {
					// TODO: handle exception
				}	
		}
		
		
		
		else if("Sand".equals(select)) {
			String uploadPath="C:/Users/raj55/Desktop/JSP/JSP Web Application/src/main/webapp/Images/"+imageFileName;
			System.out.println("Upload Path: "+uploadPath);
			
			PrintWriter out=resp.getWriter();
			
			try {
				FileOutputStream fos=new FileOutputStream(uploadPath);
				InputStream is=file.getInputStream();
				
				byte data[]=new byte[is.available()];
				is.read(data);
				fos.write(data);
				fos.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			Connection con=null;
			PreparedStatement pstmt=null;
			try {
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Jadhav@2312");
				pstmt=con.prepareStatement("insert into sand.product_info values(?,?,?,?,?)");
				pstmt.setInt(1,id);
				pstmt.setString(2,name);
				pstmt.setString(3,desc);
				pstmt.setDouble(4, price);
				pstmt.setString(5,imageFileName);
				int row=pstmt.executeUpdate();
				
				if(row>0) {
					resp.sendRedirect("./Insert_Product.jsp?msg=success");

				}
				else {
					out.println("Failed to Upload Data....");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}	
	}
		
		else if("Bricks".equals(select)) {
			String uploadPath="C:/Users/raj55/Desktop/JSP/JSP Web Application/src/main/webapp/Images/"+imageFileName;
			System.out.println("Upload Path: "+uploadPath);
			
			PrintWriter out=resp.getWriter();
			
			try {
				FileOutputStream fos=new FileOutputStream(uploadPath);
				InputStream is=file.getInputStream();
				
				byte data[]=new byte[is.available()];
				is.read(data);
				fos.write(data);
				fos.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			Connection con=null;
			PreparedStatement pstmt=null;
			try {
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Jadhav@2312");
				pstmt=con.prepareStatement("insert into brick.product_info values(?,?,?,?,?)");
				pstmt.setInt(1,id);
				pstmt.setString(2,name);
				pstmt.setString(3,desc);
				pstmt.setDouble(4, price);
				pstmt.setString(5,imageFileName);
				int row=pstmt.executeUpdate();
				
				if(row>0) {
					resp.sendRedirect("./Insert_Product.jsp?msg=success");

				}
				else {
					out.println("Failed to Upload Data....");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}	
	}
		
		
		else if("Construction Aggregates".equals(select)) {
			String uploadPath="C:/Users/raj55/Desktop/JSP/JSP Web Application/src/main/webapp/Images/"+imageFileName;
			System.out.println("Upload Path: "+uploadPath);
			
			PrintWriter out=resp.getWriter();
			
			try {
				FileOutputStream fos=new FileOutputStream(uploadPath);
				InputStream is=file.getInputStream();
				
				byte data[]=new byte[is.available()];
				is.read(data);
				fos.write(data);
				fos.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			Connection con=null;
			PreparedStatement pstmt=null;
			try {
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Jadhav@2312");
				pstmt=con.prepareStatement("insert into construction.product_info values(?,?,?,?,?)");
				pstmt.setInt(1,id);
				pstmt.setString(2,name);
				pstmt.setString(3,desc);
				pstmt.setDouble(4, price);
				pstmt.setString(5,imageFileName);
				int row=pstmt.executeUpdate();
				
				if(row>0) {
					resp.sendRedirect("./Insert_Product.jsp?msg=success");

				}
				else {
					out.println("Failed to Upload Data....");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}	
	}
		
		
			
		}
		
	
}
