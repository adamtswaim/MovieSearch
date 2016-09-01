/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logic;

import com.mysql.jdbc.Driver;
import java.sql.*;


/**
 *
 *  Adapted from code by ferdiansyah.dolot
 */
public class Connector {
    
    private Connection connecting;
    
    public Connector() throws SQLException{
        makeConnection();
    } 

    public  Connection makeConnection() throws SQLException {
        if (connecting == null) {
            new Driver();
            // create a connection
            connecting = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/movie_project",
                "root", 
                "itself");
            // Adjust for your own local server.  Database name, username, password.
         }
         return connecting;
    }
}
