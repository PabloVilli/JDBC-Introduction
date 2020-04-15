/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author PCHP
 */
public class ConnectionClass {
        public void connectToAndQueryDatabase(String username, String password) {

        try {
            Connection con = DriverManager.getConnection("jdbc:myDriver:dbConnect", username, password);

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT Login, Passlogin FROM sesiones");

            while (rs.next()) {
                String x = rs.getString("a");
                String s = rs.getString("b");
            }

        } catch (Exception e) {

        }

    }
}
