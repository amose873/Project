package db;
import java.util.*;
import java.sql.*;
import beans.Product;
public class DAO{
    static Connection con;
    public DAO()throws Exception{
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql:///amosedb", "root", "");
    } 
    public boolean doreg(String name,String phone,String email,String pwd)throws Exception{
        PreparedStatement pstmt=con.prepareStatement("insert user1 value(?,?,?,?)");
        pstmt.setString(1,name);
        pstmt.setString(2,phone);
        pstmt.setString(3,email);
        pstmt.setString(4,pwd);
        int i=pstmt.executeUpdate();
        return true;
    }
    public boolean dologin(String phone,String pwd)throws Exception{
        boolean f=false;
        PreparedStatement pstmt=con.prepareStatement("select * from user1 where phone=? and pwd=?");
        pstmt.setString(1,phone);
        pstmt.setString(2,pwd);
        ResultSet r=pstmt.executeQuery();
        if(r.next()){
            f=false;
        }
        return f;
    }
    public boolean doadd(int pno,String pname,float pprice,String discount)throws Exception{
        PreparedStatement pstmt=con.prepareStatement("insert product value(?,?,?,?)");
        pstmt.setInt(1,pno);
        pstmt.setString(2,pname);
        pstmt.setFloat(3,pprice);
        pstmt.setString(4,discount);
        int i=pstmt.executeUpdate();
        return true;
    }
    public ArrayList<Product> getProduct()throws Exception{
        ArrayList<Product> al=new ArrayList<Product>();
        PreparedStatement pstmt=con.prepareStatement("select * from product order by pno");
        ResultSet r=pstmt.executeQuery();
        while(r.next()){
            int pno=r.getInt(1);
            String pname=r.getString(2);
            float pprice=r.getFloat(3);
            String discount=r.getString(4);
            Product p=new Product(pno,pname,pprice,discount);
            al.add(p);
        }
        return al;
    }
    public boolean delete(int a)throws Exception{
        PreparedStatement pst=con.prepareStatement("delete from product where pno=?");
        pst.setInt(1, a);
        pst.executeUpdate();
        return true;
    }
    public boolean update(int a,String b,float c,String d)throws Exception{
        PreparedStatement pst=con.prepareStatement("update product set pname=?,pprice=?,discount=? where pno=?");
        pst.setInt(4, a);
        pst.setString(1, b);
        pst.setFloat(2, c);
        pst.setString(3, d);
        pst.executeUpdate();
        return true;
    }
}


