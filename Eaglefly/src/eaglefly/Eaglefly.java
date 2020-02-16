/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package eaglefly;
import java.sql.*;
import javax.swing.*;
import java.sql.DriverManager;
import java.sql.Connection;

/**
 *
 * @author Hp
 */
public class Eaglefly {
static Connection ConneccrDb() {
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/eagleflight?"+"user=root&password=");
    return conn;
}
catch(Exception e)
{
    JOptionPane.showMessageDialog(null,e);
    return null;
}
    }

static Connection RegisterDB() {
 try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Eagleflight?"+"user=root&password=");
    return conn;
}
catch(Exception e)
{
    JOptionPane.showMessageDialog(null,e);
    return null;
}
    
}
}
