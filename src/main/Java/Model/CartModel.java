package Model;

import Entities.Cart;
import Entities.Category;
import Entities.Product;
import Pool.ConnectionPool;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CartModel {
    ResultSet rs = null;
    Connection connObj = null;
    PreparedStatement pstmtObj = null;
    ConnectionPool jdbcObj = null;

    public Cart getCartWithProductAndUser(String idProduct, String idUser) {
        Cart cart = null;
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from cart where productId = ? and userId = ?";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, idProduct);
            pstmtObj.setString(2, idUser);

            rs = pstmtObj.executeQuery();
            while (rs.next()) {
                cart = new Cart(rs.getString("id"), rs.getString("productId"), rs.getString("userId"), rs.getInt("quantity"));
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
        return cart;
    }

    public void addOrUpdateCart(String idProduct, String idUser, int quantity) {
        try {
            Cart cart = getCartWithProductAndUser(idProduct, idUser);
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "";
            if (cart == null) {
//              Add
                query = "insert into cart values (uuid(),?, ?,?)";
                pstmtObj = connObj.prepareStatement(query);

                pstmtObj.setString(1, idProduct);
                pstmtObj.setString(2, idUser);
                pstmtObj.setInt(3, quantity);

            } else {
//              Update
                query = "update cart set quantity = ? where productId = ? and userId = ?";
                pstmtObj = connObj.prepareStatement(query);
                pstmtObj.setInt(1, cart.getQuantity() + quantity);
                pstmtObj.setString(2, idProduct);
                pstmtObj.setString(3, idUser);
            }
            pstmtObj.executeUpdate();
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
    }

    public List<Cart> getListCartWithUserOrProduct(String idKey, int key) {
        List<Cart> lc = new ArrayList<Cart>();
        try {
            jdbcObj = new ConnectionPool();
            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "";
            if (key == 0) query = "select * from cart where userId = ?";
            if (key == 1) query = "select * from cart where productId = ?";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, idKey);

            rs = pstmtObj.executeQuery();

            while (rs.next()) {
                lc.add(new Cart(rs.getString("id"), rs.getString("productId"), rs.getString("userId"), rs.getInt("quantity")));

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
        return lc;
    }


    public void minusCart(String idProduct, String userId, int quantity) {
        try {
            jdbcObj = new ConnectionPool();
            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "update cart set quantity = ? where productId=? and userId = ?";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setInt(1, quantity);
            pstmtObj.setString(2, idProduct);
            pstmtObj.setString(3, userId);
            pstmtObj.executeUpdate();

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
    }

    public void removeCart(String idProduct, String userId) {
        try {
            jdbcObj = new ConnectionPool();
            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "delete from cart where productId = ? and userId = ?";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, idProduct);
            pstmtObj.setString(2, userId);
            pstmtObj.executeUpdate();

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
    }
}
