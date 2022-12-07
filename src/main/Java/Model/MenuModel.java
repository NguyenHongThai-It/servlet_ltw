package Model;

import Entities.Category;
import Entities.Menu;
import Pool.ConnectionPool;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MenuModel {
    ResultSet rs = null;
    Connection connObj = null;
    PreparedStatement pstmtObj = null;
    ConnectionPool jdbcObj = null;

    public List<Menu> getListMenu() {
        List<Menu> listMenu = new ArrayList<Menu>();
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from menu";

            pstmtObj = connObj.prepareStatement(query);

            rs = pstmtObj.executeQuery();
            while (rs.next()) {
                listMenu.add(new Menu(rs.getString("id"), rs.getString("name"), rs.getString("link"), rs.getInt("types"), rs.getInt("position"), rs.getString("slug"), rs.getInt("status"), rs.getString("createdAt"), rs.getString("updatedAt"), rs.getInt("img")));
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
        return listMenu;
    }
}
