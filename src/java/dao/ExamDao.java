package dao;

import connection.mycon;
import java.sql.*;
public class ExamDao {
    public boolean Login(String enroll,String pass)throws SQLException
    {
 
    Connection con=null;
    PreparedStatement ps=null;
    con=mycon.getConnection();
    String sql;
    sql="select * from Slogin where enrollment=? and password=?";
    ps=con.prepareStatement(sql);
    ps.setString(1,enroll);
    ps.setString(2,pass);
    ResultSet rs=null;
    rs=ps.executeQuery();
    if(rs.next())
    {
        return true;
    }
    return false;
    }
    public void store(String dt) throws SQLException
    {
    Connection con=null;
    PreparedStatement ps=null;
    con=mycon.getConnection();
    String sql;
    sql="insert into date values(?)";
    ps=con.prepareStatement(sql);
    ps.setString(1,dt);
    int n=ps.executeUpdate();
    System.out.println("record inserted");
    }
      
    public ResultSet Fetch() 
    {
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
   
    con=mycon.getConnection();
    String sql;
    sql="Select * from  date ";
    try {
    ps=con.prepareStatement(sql);
         

    rs=ps.executeQuery();
  

    }
    catch (SQLException ex) {
        
    System.out.println(ex);
    
    }
    System.out.println("record inserted");
    return rs;
    } 
    
    
    
    
    public boolean Register(String user,String pass,String email,long mobile)throws SQLException
    {
    Connection con=null;
    PreparedStatement ps=null;
    con=mycon.getConnection();
    String sql;
    sql="insert into Slogin values(?,?,?,?)";
    ps=con.prepareStatement(sql);
    ps.setString(1,user);
    ps.setString(2,pass);
    ps.setString(3,email);
    ps.setLong(4,mobile);
    int n=ps.executeUpdate();
 
    if(n>0)
    {
    return true;
    }
    return false;
    }
    
  
}