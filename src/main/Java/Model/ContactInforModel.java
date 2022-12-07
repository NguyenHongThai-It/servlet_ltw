package Model;

import Entities.Category;
import Entities.ContactInfor;
import Pool.ConnectionPool;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ContactInforModel {
    ResultSet rs = null;
    Connection connObj = null;
    PreparedStatement pstmtObj = null;
    ConnectionPool jdbcObj = null;

    public ContactInfor getContactInfo() {
        ContactInfor ci = null;

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from contact_infor ";

            pstmtObj = connObj.prepareStatement(query);

            rs = pstmtObj.executeQuery();
            while (rs.next()) {
                ci = new ContactInfor(rs.getString("id"), rs.getString("hotline"), rs.getString("zalo"), rs.getString("timeopen"), rs.getInt("img"), rs.getString("code_disc"), rs.getString("email"));
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


        return ci;
    }
}
