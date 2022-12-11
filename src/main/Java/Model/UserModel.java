package Model;

import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import Entities.Service;
import Entities.User;
import Pool.ConnectionPool;
import org.mindrot.jbcrypt.BCrypt;

public class UserModel {
    // Step 1: Initialize connection objects

    ResultSet rs = null;
    Connection connObj = null;
    PreparedStatement pstmtObj = null;
    ConnectionPool jdbcObj = null;


    public User getUser(String email, String password) {
        List<User> listUsers = new ArrayList<>();
        User user = null;

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();

            String query = "select * from users where email = ?";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, email);

            rs = pstmtObj.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String surname = rs.getString("surname");
                String name = rs.getString("name");
                String userEmail = rs.getString("email");
                String sdt = rs.getString("sdt");
                String userPassword = rs.getString("password");
                String avatar = rs.getString("avatar");
                String address = rs.getString("address");
                int role = rs.getInt("role");
                int status = rs.getInt("status");
                if (BCrypt.checkpw(password, userPassword)) {
                    listUsers.add(new User(id, surname, name, userEmail, sdt, "", avatar, address, role, status));
                }
            }
            if (listUsers.size() != 0) user = listUsers.get(0);

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
        return user;

    }

    public User createUser(String email, String password, String nameUser, String surname, String tel) {

        User user = null;
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String passwordHash = BCrypt.hashpw(password, BCrypt.gensalt());
            String query = "INSERT INTO users  (id,email,password,name,surname,sdt,avatar,status,role) values (UUID(),?, ?, ?, ?, ?,?,1,0)";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, email);
            pstmtObj.setString(2, passwordHash);
            pstmtObj.setString(3, nameUser);
            pstmtObj.setString(4, surname);
            pstmtObj.setString(5, tel);
            pstmtObj.setString(6, "https://toidicafe.vn/static/images/2022/06/11/3532e135-4e0b-46ae-8ee4-638736ed8eac-demo.jpg");
            pstmtObj.executeUpdate();


            user = getUser(email, password);
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

        return user;
    }

    public User createUser(String email, String password, String nameUser, String surname, String tel, int role, String address, int status) {

        User user = null;
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String passwordHash = BCrypt.hashpw(password, BCrypt.gensalt());
            String query = "INSERT INTO users  (id,email,password,name,surname,sdt,avatar,status,role,address) values (UUID(),?, ?, ?, ?, ?,?,?,?,?)";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, email);
            pstmtObj.setString(2, passwordHash);
            pstmtObj.setString(3, nameUser);
            pstmtObj.setString(4, surname);
            pstmtObj.setString(5, tel);
            pstmtObj.setString(6, "https://toidicafe.vn/static/images/2022/06/11/3532e135-4e0b-46ae-8ee4-638736ed8eac-demo.jpg");
            pstmtObj.setInt(7, status);
            pstmtObj.setInt(8, role);
            pstmtObj.setString(9, address);

            pstmtObj.executeUpdate();


            user = getUser(email, password);
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

        return user;
    }

    public User updateUser(HttpSession session, User userParams, String key, String action, String currentPass) {
        User user = (User) session.getAttribute("user");
        boolean hasUser = getUser(user.getEmail(), currentPass) != null;
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "";
            if ("updatename".equalsIgnoreCase(action)) {
                query = "UPDATE users set name = ? where id = ?";
                pstmtObj = connObj.prepareStatement(query);
                pstmtObj.setString(1, key);
                pstmtObj.setString(2, userParams.getUserId());
                pstmtObj.executeUpdate();
                user.setName(key);
            } else if ("updateEmail".equalsIgnoreCase(action)) {
                query = "UPDATE users set email = ? where id = ?";
                pstmtObj = connObj.prepareStatement(query);
                pstmtObj.setString(1, key);
                pstmtObj.setString(2, userParams.getUserId());
                pstmtObj.executeUpdate();
                user.setEmail(key);
            } else if ("updateTel".equalsIgnoreCase(action)) {
                query = "UPDATE users set sdt = ? where id = ?";
                pstmtObj = connObj.prepareStatement(query);
                pstmtObj.setString(1, key);
                pstmtObj.setString(2, userParams.getUserId());
                pstmtObj.executeUpdate();
                user.setPhone(key);
            } else if ("updateAddress".equalsIgnoreCase(action)) {
                query = "UPDATE users set address = ? where id = ?";
                pstmtObj = connObj.prepareStatement(query);
                pstmtObj.setString(1, key);
                pstmtObj.setString(2, userParams.getUserId());
                pstmtObj.executeUpdate();
                user.setAddress(key);
            } else if ("updateSurname".equalsIgnoreCase(action)) {
                query = "UPDATE users set surname = ? where id = ?";
                pstmtObj = connObj.prepareStatement(query);
                pstmtObj.setString(1, key);
                pstmtObj.setString(2, userParams.getUserId());
                pstmtObj.executeUpdate();
                user.setSurname(key);
            } else if ("updatePassword".equalsIgnoreCase(action)) {
                if (hasUser) {
                    query = "UPDATE users set password = ? where id = ?";
                    pstmtObj = connObj.prepareStatement(query);
                    pstmtObj.setString(1, BCrypt.hashpw(key, BCrypt.gensalt()));
                    pstmtObj.setString(2, userParams.getUserId());
                    pstmtObj.executeUpdate();
                    user.setPassword(key);
                }


            }

            session.setAttribute("user", user);
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
        return user;
    }

    public List<User> getListUserModAndAdmin(int lim) {
        List<User> listUsers = new ArrayList<>();
        User user = null;

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();

            String query = "select * from users where role >=1 limit ?";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setInt(1, lim);

            rs = pstmtObj.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String surname = rs.getString("surname");
                String name = rs.getString("name");
                String userEmail = rs.getString("email");
                String sdt = rs.getString("sdt");
                String userPassword = rs.getString("password");
                String avatar = rs.getString("avatar");
                String address = rs.getString("address");
                int role = rs.getInt("role");
                int status = rs.getInt("status");
                listUsers.add(new User(id, surname, name, userEmail, sdt, "", avatar, address, role, status));
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
        return listUsers;

    }

    public List<User> getListUserByFilter(String nameFilter, String idFilter, String roleFilter, int offset, int noOfRecords) {
        List<User> listUsers = new ArrayList<User>();

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();

            String query = "";
            if (roleFilter.length() != 0 && roleFilter.equalsIgnoreCase("asc")) {
                query = "select * from users where name like ? and id like ? order by role asc limit ?,?";
            } else if (roleFilter.length() != 0 && roleFilter.equalsIgnoreCase("desc")) {
                query = "select * from users where name like ? and id like ? order by role desc limit ?,?";
            } else {
                query = "select * from users where name like ? and id like ? limit ?,?";
            }
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, nameFilter + "%");
            pstmtObj.setString(2, idFilter + "%");
            pstmtObj.setInt(3, offset);
            pstmtObj.setInt(4, noOfRecords);

            rs = pstmtObj.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String surname = rs.getString("surname");
                String name = rs.getString("name");
                String userEmail = rs.getString("email");
                String sdt = rs.getString("sdt");
                String userPassword = rs.getString("password");
                String avatar = rs.getString("avatar");
                String address = rs.getString("address");
                int role = rs.getInt("role");
                int status = rs.getInt("status");

                listUsers.add(new User(id, surname, name, userEmail, sdt, "", avatar, address, role, status));
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
        return listUsers;
    }

    public List<User> getAllUser() {
        List<User> listUsers = new ArrayList<>();
        User user = null;

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();

            String query = "select * from users ";

            pstmtObj = connObj.prepareStatement(query);

            rs = pstmtObj.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String surname = rs.getString("surname");
                String name = rs.getString("name");
                String userEmail = rs.getString("email");
                String sdt = rs.getString("sdt");
                String userPassword = rs.getString("password");
                String avatar = rs.getString("avatar");
                String address = rs.getString("address");
                int role = rs.getInt("role");
                int status = rs.getInt("status");
                listUsers.add(new User(id, surname, name, userEmail, sdt, "", avatar, address, role, status));
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
        return listUsers;

    }

    public void removeUser(String idUser) {
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();

            String query = " delete from users where id = ?";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, idUser);
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

    public void updateUserAllField(String email, String password, String nameUser, String surname, String tel, int role, String address, int status, String id, String idCurrent) {
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String passwordHash = BCrypt.hashpw(password, BCrypt.gensalt());

            String query = " update users set surname =?, name = ?, email=?, sdt=?, password=? ,address=?,role=?,status=? where id = ?";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, surname);
            pstmtObj.setString(2, nameUser);
            pstmtObj.setString(3, email);
            pstmtObj.setString(4, tel);
            pstmtObj.setString(5, passwordHash);
            pstmtObj.setString(6, address);
            pstmtObj.setInt(7, role);
            pstmtObj.setInt(8, status);
            pstmtObj.setString(9, idCurrent);

//            pstmtObj.setString(10, user.getAvatar());


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

    public User getUserById(String idUser) {
        List<User> listUsers = new ArrayList<>();
        User user = null;

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();

            String query = "select * from users where id = ?";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, idUser);

            rs = pstmtObj.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String surname = rs.getString("surname");
                String name = rs.getString("name");
                String userEmail = rs.getString("email");
                String sdt = rs.getString("sdt");
                String userPassword = rs.getString("password");
                String avatar = rs.getString("avatar");
                String address = rs.getString("address");
                int role = rs.getInt("role");
                int status = rs.getInt("status");
                listUsers.add(new User(id, surname, name, userEmail, sdt, userPassword, avatar, address, role, status));
            }
            if (listUsers.size() != 0) user = listUsers.get(0);

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
        return user;
    }
}
