package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionClass {

    Connection conn = null;

    public Connection GetConnection() throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/dbConnect?characterEncoding=latin1&useConfigs=maxPerformance";
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = (Connection) DriverManager.getConnection(url, "root", "admin");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage() + "    |    " + ex.getLocalizedMessage());
        }
        return conn;
    }

}
