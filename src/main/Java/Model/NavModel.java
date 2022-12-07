package Model;

import Entities.Nav;
import Pool.ConnectionPool;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NavModel {
    // Step 1: Initialize connection objects

    ResultSet rsObj = null;
    Connection connObj = null;
    PreparedStatement pstmtObj = null;
    ConnectionPool jdbcObj = null;

    public List<Nav> getListNavs() {
        List<Nav> listNavs = new ArrayList<>();


        try {
            jdbcObj = new ConnectionPool();
            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from nav";

            pstmtObj = connObj.prepareStatement(query);

            rsObj = pstmtObj.executeQuery();
            while (rsObj.next()) {

                listNavs.add(new Nav(rsObj.getString("id"), rsObj.getString("name"), rsObj.getInt("img"), rsObj.getString("slug")));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            try {
                // Closing ResultSet Object
                if (rsObj != null) {
                    rsObj.close();
                }
                // Closing PreparedStatement Object
                if (pstmtObj != null) {
                    pstmtObj.close();
                }
                // Closing Connection Object
                if (connObj != null) {
                    connObj.close();
                }
            } catch (Exception sqlException) {
                sqlException.printStackTrace();
            }
        }

        return listNavs;
    }
}
