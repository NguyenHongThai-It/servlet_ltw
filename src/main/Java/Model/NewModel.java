package Model;

import Entities.New;
import Entities.NewContentDetail;
import Pool.ConnectionPool;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewModel {
    ResultSet rs = null;
    Connection connObj = null;
    PreparedStatement pstmtObj = null;
    ConnectionPool jdbcObj = null;

    public NewContentDetail getHTMLNew() {
        NewContentDetail ncd = null;
        try {
            jdbcObj = new ConnectionPool();
            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from news_content_detail where id = ? and status = ?";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, "1");
            pstmtObj.setInt(2, 1);
            rs = pstmtObj.executeQuery();
            while (rs.next()) {
                ncd = new NewContentDetail(rs.getString("id"), rs.getString("content"), rs.getInt("status"));
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

        return ncd;

    }

    public List<New> getListNew(int lim) {
        List<New> ls = new ArrayList<New>();
        try {
            jdbcObj = new ConnectionPool();
            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from news limit ?";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setInt(1, lim);
            rs = pstmtObj.executeQuery();
            while (rs.next()) {
                ls.add(new New(rs.getString("id"), rs.getString("categories_id"), rs.getString("name"), rs.getString("description"), rs.getString("thumbnail"), rs.getString("news_content_detail")));
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


        return ls;

    }
}
