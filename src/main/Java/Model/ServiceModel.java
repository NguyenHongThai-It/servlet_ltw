package Model;

import Entities.Category;
import Entities.Nav;
import Entities.Service;
import Pool.ConnectionPool;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ServiceModel {
    ResultSet rs = null;
    Connection connObj = null;
    PreparedStatement pstmtObj = null;
    ConnectionPool jdbcObj = null;

    public List<Service> getListService() {
        List<Service> listService = new ArrayList<Service>();

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from service";

            pstmtObj = connObj.prepareStatement(query);

            rs = pstmtObj.executeQuery();
            while (rs.next()) {

                listService.add(new Service(rs.getString("id"), rs.getString("content"), rs.getString("subcontent"), rs.getInt("orders"), rs.getInt("img")));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            try {
                // Closing ResultSet Object
                if (rs != null) {
                    rs.close();
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

        return listService;
    }

}
