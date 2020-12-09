package connection;
import java.sql.*;
public class mycon {
    static Connection con=null;
    static{
    try {        
    Class.forName("com.mysql.cj.jdbc.Driver");
    System.out.println("Driver loaded");
    }
    catch (ClassNotFoundException e) 
    {
            System.out.println(e);
        
        }
    
    }
    public static Connection getConnection()
    {
        try {
        con=DriverManager.getConnection("examportal.clvhkxqlq99f.us-east-1.rds.amazonaws.com:3306/examportal","admin","password");
        System.out.println("Connected to my sql");
    } catch (SQLException e) {
            System.out.println(e);
    }
       return con;

}
}