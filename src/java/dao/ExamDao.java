package dao;

import Model.PaperModel;
import Model.TeacherModel;
import connection.mycon;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class ExamDao {
    public boolean SLogin(String enroll,String pass)throws SQLException
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
    
    public boolean TLogin(String Tid,String pass)throws SQLException
    {

    Connection con=null;
    PreparedStatement ps=null;
    con=mycon.getConnection();
    String sql;
    sql="select * from Tlogin where TeacherID=? and Password=?";
    ps=con.prepareStatement(sql);
    ps.setString(1,Tid);
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
    
    public int getNextPaperID() throws SQLException{
    String sql;
    int paperno = 200000;
    Connection con=null;
    PreparedStatement ps=null;
    con=mycon.getConnection();
    sql="Select max(PaperID) from Paper;";
    ps=con.prepareStatement(sql);
    ResultSet rs=ps.executeQuery();
    if(rs.next()){
    if(rs.getInt("max(PaperID)") != 0){
    paperno = rs.getInt("max(PaperID)")+1;
    }
    }
    con.close();
    return paperno;
} 
    public TeacherModel getTeacherById(String TeacherID) throws SQLException{
    String sql;
    Connection con=null;
    PreparedStatement ps=null;
    con=mycon.getConnection();
    sql="Select * from Tlogin where TeacherID = ?;";
    ps=con.prepareStatement(sql);
    ps.setString(1, TeacherID);
    ResultSet rs=ps.executeQuery();
    TeacherModel t = new TeacherModel();
    if(rs.next()){
    t.setTeacherId(rs.getString("TeacherID"));
    t.setEmail(rs.getString("Email"));
    }
    con.close();
    return t;
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
    
    public List<PaperModel> getPaperByTeacherID(String TeacherID) throws SQLException{
        String sql;
        Connection con=null;
        PreparedStatement ps=null;
        con=mycon.getConnection();
        sql="select * from Paper where TeacherID = ?";
        ps=con.prepareStatement(sql);
        ps.setString(1, TeacherID);
        ResultSet rs=ps.executeQuery();
        List<PaperModel> l = new ArrayList<PaperModel>();
        while(rs.next()){
        PaperModel packet=new PaperModel();
        packet.setPaperId(rs.getInt("PaperID"));
        packet.setTeacherId(rs.getString("TeacherID"));
        packet.setSubject(rs.getString("Subject"));
        packet.setDate(rs.getString("Date"));
        l.add(packet);
        }
        return  l;
    }

    
    
}
