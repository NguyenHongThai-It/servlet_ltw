package Model;

import Entities.Cart;
import Entities.OrderSuccess;
import Pool.ConnectionPool;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class OrderSuccessModel {
    ResultSet rs = null;
    Connection connObj = null;
    PreparedStatement pstmtObj = null;
    ConnectionPool jdbcObj = null;

    public OrderSuccess getOrderedWithProductAndUser(String idProduct, String idUser) {
        OrderSuccess os = null;
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select distinct (id),productId, number,code_disc,userId,status from order_success where productId = ? and userId = ?";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, idProduct);
            pstmtObj.setString(2, idUser);

            rs = pstmtObj.executeQuery();
            while (rs.next()) {
                os = new OrderSuccess(rs.getString("id"), rs.getString("productId"), rs.getInt("number"), rs.getString("code_disc"), rs.getString("userId"), rs.getInt("status"));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return os;
    }


    public List<OrderSuccess> getListOrderedWithUserOrProduct(String idKey, int key) {
        List<OrderSuccess> los = new ArrayList<OrderSuccess>();
        try {
            jdbcObj = new ConnectionPool();
            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "";
            if (key == 0)
                query = "select distinct (id),productId, number,code_disc,userId,status from order_success where userId = ?";
            if (key == 1)
                query = "select distinct (id),productId, number,code_disc,userId,status from order_success  where productId = ?";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, idKey);

            rs = pstmtObj.executeQuery();

            while (rs.next()) {
                los.add(new OrderSuccess(rs.getString("id"), rs.getString("productId"), rs.getInt("number"), rs.getString("code_disc"), rs.getString("userId"), rs.getInt("status")));

            }
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
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
        return los;
    }

    public void addOrder(String idProduct, String idUser, int quantity) {
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "insert into order_success values (uuid(),?, ?,?,?,?)";

            pstmtObj = connObj.prepareStatement(query);

            pstmtObj.setString(1, idProduct);
            pstmtObj.setInt(2, quantity);
            pstmtObj.setString(3, "GIAMGIA");
            pstmtObj.setString(4, idUser);
            pstmtObj.setInt(5, 1);
            pstmtObj.executeUpdate();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
