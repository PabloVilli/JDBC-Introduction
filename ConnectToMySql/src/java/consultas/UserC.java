package consultas;
import Connection.ConnectionClass;
import Models.User;
import java.sql.*;

public class UserC {

    public User ComprobarUsuario(String username, String password) throws SQLException {
        User objUser = new User();
        ConnectionClass objConn = new ConnectionClass();
        Connection conn = null;
        try {            
            conn = objConn.GetConnection();
            Statement stmt = conn.createStatement();
            String sql="SELECT Login, Passlogin FROM sesiones WHERE Login = '" + username + "' and PassLogin = '"+ password + "'";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                objUser.setUser(rs.getString("Login"));
                objUser.setPass(rs.getString("PassLogin"));
            }
            
        } catch (Exception ex) {   
            System.out.println("VendorError: " + ex.getMessage());
        }
        finally {
            conn.close();
        }
        return objUser;
    }
    }
