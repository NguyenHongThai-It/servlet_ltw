package Model;

import Entities.Category;
import Entities.Nav;
import Entities.Product;
import Pool.ConnectionPool;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductModel {
    ResultSet rs = null;
    Connection connObj = null;
    PreparedStatement pstmtObj = null;
    ConnectionPool jdbcObj = null;

    public List<Product> getProductListWithKey(int lim, String key) {
        List<Product> listProduct = new ArrayList<Product>();

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "";
            if ("bestsell".equalsIgnoreCase(key)) {
                query = "Select * from product where bestsell = ? limit ?";
            } else if ("forOld".equalsIgnoreCase(key)) {
                query = "Select * from product where forOld = ? limit ?";
            } else if ("outstanding".equalsIgnoreCase(key)) {
                query = "Select * from product where outstanding = ? limit ?";
            } else {
                query = "Select * from product where bestsell = ? limit ?";

            }
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setInt(1, 1);
            pstmtObj.setInt(2, lim);
            rs = pstmtObj.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String slug = rs.getString("slug");
                String desc = rs.getString("description");
                int rate = rs.getInt("rate");
                int amount_sold = rs.getInt("amount_sold");
                int price = rs.getInt("price");
                String spec = rs.getString("specification");
                String origin = rs.getString("origin");
                String brand = rs.getString("brand");
                int price_disc = rs.getInt("price_disc");
                int amount_rest = rs.getInt("amount_rest");
                String code_disc = rs.getString("code_disc");
                int dis_extra = rs.getInt("dis_extra");
                String content_detail_product = rs.getString("content_detail_product");
                int img = rs.getInt("img");
                int types = rs.getInt("types");
                int outstanding = rs.getInt("outstanding");
                int bestSell = rs.getInt("bestsell");
                int forOld = rs.getInt("forOld");
                int form = rs.getInt("form");
                String thumbnail = rs.getString("thumbnail");
                int status = rs.getInt("status");

                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail, status));
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

        return listProduct;
    }


    public List<Product> getListProductByCat(int catId, String idMenu, int offset, int noOfRecords) {
        List<Product> listProduct = new ArrayList<Product>();


        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "SELECT DISTINCT(p.id),p.name,p.slug,p.description,p.rate,p.amount_sold,p.price,p.specification,p.origin,p.brand,p.price_disc,p.amount_rest,p.code_disc,p.dis_extra,p.content_detail_product,p.img,p.types,p.outstanding,p.bestsell,p.forOld,p.form,p.thumbnail,p.status FROM product p join categories cat on p.types = ? join menu me on cat.parentid = ? limit ? ,? ";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setInt(1, catId);
            pstmtObj.setString(2, idMenu);
            pstmtObj.setInt(3, offset);
            pstmtObj.setInt(4, noOfRecords);

            rs = pstmtObj.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String slug = rs.getString("slug");
                String desc = rs.getString("description");
                int rate = rs.getInt("rate");
                int amount_sold = rs.getInt("amount_sold");
                int price = rs.getInt("price");
                String spec = rs.getString("specification");
                String origin = rs.getString("origin");
                String brand = rs.getString("brand");
                int price_disc = rs.getInt("price_disc");
                int amount_rest = rs.getInt("amount_rest");
                String code_disc = rs.getString("code_disc");
                int dis_extra = rs.getInt("dis_extra");
                String content_detail_product = rs.getString("content_detail_product");
                int img = rs.getInt("img");
                int types = rs.getInt("types");
                int outstanding = rs.getInt("outstanding");
                int bestSell = rs.getInt("bestsell");
                int forOld = rs.getInt("forOld");
                int form = rs.getInt("form");
                String thumbnail = rs.getString("thumbnail");
                int status = rs.getInt("status");


                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail, status));
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

        return listProduct;

    }

    public List<Product> getListProductByCatPageProduct(int catId, int offset, int noOfRecords) {
        List<Product> listProduct = new ArrayList<Product>();


        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "SELECT DISTINCT(p.id),p.name,p.slug,p.description,p.rate,p.amount_sold,p.price,p.specification,p.origin,p.brand,p.price_disc,p.amount_rest,p.code_disc,p.dis_extra,p.content_detail_product,p.img,p.types,p.outstanding,p.bestsell,p.forOld,p.form,p.thumbnail,p.status FROM product p join categories cat on p.types = cat.id where cat.id = ? limit ? ,?";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setInt(1, catId);
            pstmtObj.setInt(2, offset);
            pstmtObj.setInt(3, noOfRecords);

            rs = pstmtObj.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String slug = rs.getString("slug");
                String desc = rs.getString("description");
                int rate = rs.getInt("rate");
                int amount_sold = rs.getInt("amount_sold");
                int price = rs.getInt("price");
                String spec = rs.getString("specification");
                String origin = rs.getString("origin");
                String brand = rs.getString("brand");
                int price_disc = rs.getInt("price_disc");
                int amount_rest = rs.getInt("amount_rest");
                String code_disc = rs.getString("code_disc");
                int dis_extra = rs.getInt("dis_extra");
                String content_detail_product = rs.getString("content_detail_product");
                int img = rs.getInt("img");
                int types = rs.getInt("types");
                int outstanding = rs.getInt("outstanding");
                int bestSell = rs.getInt("bestsell");
                int forOld = rs.getInt("forOld");
                int form = rs.getInt("form");
                String thumbnail = rs.getString("thumbnail");
                int status = rs.getInt("status");


                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail, status));
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

        return listProduct;

    }

    public Product getProductById(String idProduct) {
        Product pro = null;

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from product where id = ?";


            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, idProduct);
            rs = pstmtObj.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String slug = rs.getString("slug");
                String desc = rs.getString("description");
                int rate = rs.getInt("rate");
                int amount_sold = rs.getInt("amount_sold");
                int price = rs.getInt("price");
                String spec = rs.getString("specification");
                String origin = rs.getString("origin");
                String brand = rs.getString("brand");
                int price_disc = rs.getInt("price_disc");
                int amount_rest = rs.getInt("amount_rest");
                String code_disc = rs.getString("code_disc");
                int dis_extra = rs.getInt("dis_extra");
                String content_detail_product = rs.getString("content_detail_product");
                int img = rs.getInt("img");
                int types = rs.getInt("types");
                int outstanding = rs.getInt("outstanding");
                int bestSell = rs.getInt("bestsell");
                int forOld = rs.getInt("forOld");
                int form = rs.getInt("form");
                String thumbnail = rs.getString("thumbnail");
                int status = rs.getInt("status");

                pro = (new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail, status));
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

        return pro;
    }

    public int getCountProduct() {
        int count = 0;
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from product ";
            pstmtObj = connObj.prepareStatement(query);
            rs = pstmtObj.executeQuery();

            rs.last();
            count = rs.getRow();
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
            return count;
        }
    }

    public List<Product> getListProductByName(String nameSearch, int offset, int noOfRecords) {
        List<Product> listProduct = new ArrayList<Product>();

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from product where name like ? limit ?,?";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, nameSearch.trim() + "%");
            pstmtObj.setInt(2, offset);
            pstmtObj.setInt(3, noOfRecords);
            rs = pstmtObj.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String slug = rs.getString("slug");
                String desc = rs.getString("description");
                int rate = rs.getInt("rate");
                int amount_sold = rs.getInt("amount_sold");
                int price = rs.getInt("price");
                String spec = rs.getString("specification");
                String origin = rs.getString("origin");
                String brand = rs.getString("brand");
                int price_disc = rs.getInt("price_disc");
                int amount_rest = rs.getInt("amount_rest");
                String code_disc = rs.getString("code_disc");
                int dis_extra = rs.getInt("dis_extra");
                String content_detail_product = rs.getString("content_detail_product");
                int img = rs.getInt("img");
                int types = rs.getInt("types");
                int outstanding = rs.getInt("outstanding");
                int bestSell = rs.getInt("bestsell");
                int forOld = rs.getInt("forOld");
                int form = rs.getInt("form");
                String thumbnail = rs.getString("thumbnail");
                int status = rs.getInt("status");

                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail, status));
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

        return listProduct;
    }

    public List<Product> getListProduct(int offset, int noOfRecords) {
        List<Product> listProduct = new ArrayList<Product>();

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from product limit ?,?";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setInt(1, offset);
            pstmtObj.setInt(2, noOfRecords);

            rs = pstmtObj.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String slug = rs.getString("slug");
                String desc = rs.getString("description");
                int rate = rs.getInt("rate");
                int amount_sold = rs.getInt("amount_sold");
                int price = rs.getInt("price");
                String spec = rs.getString("specification");
                String origin = rs.getString("origin");
                String brand = rs.getString("brand");
                int price_disc = rs.getInt("price_disc");
                int amount_rest = rs.getInt("amount_rest");
                String code_disc = rs.getString("code_disc");
                int dis_extra = rs.getInt("dis_extra");
                String content_detail_product = rs.getString("content_detail_product");
                int img = rs.getInt("img");
                int types = rs.getInt("types");
                int outstanding = rs.getInt("outstanding");
                int bestSell = rs.getInt("bestsell");
                int forOld = rs.getInt("forOld");
                int form = rs.getInt("form");
                String thumbnail = rs.getString("thumbnail");
                int status = rs.getInt("status");

                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail, status));
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

        return listProduct;
    }

    public List<Product> getListProductByFilter(String type, String sort, int offset, int noOfRecords) {
        List<Product> listProduct = new ArrayList<Product>();

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from product where form IN (?) limit ?,?";
            if (sort != null && sort.equals("desc"))
                query = "Select * from product where form IN (?) order by price_disc desc limit ?,?";
            if (sort != null && sort.equals("asc"))
                query = "Select * from product where form IN (?) order by price_disc asc limit ?,?";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, type);
            pstmtObj.setInt(2, offset);
            pstmtObj.setInt(3, noOfRecords);
            rs = pstmtObj.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String slug = rs.getString("slug");
                String desc = rs.getString("description");
                int rate = rs.getInt("rate");
                int amount_sold = rs.getInt("amount_sold");
                int price = rs.getInt("price");
                String spec = rs.getString("specification");
                String origin = rs.getString("origin");
                String brand = rs.getString("brand");
                int price_disc = rs.getInt("price_disc");
                int amount_rest = rs.getInt("amount_rest");
                String code_disc = rs.getString("code_disc");
                int dis_extra = rs.getInt("dis_extra");
                String content_detail_product = rs.getString("content_detail_product");
                int img = rs.getInt("img");
                int types = rs.getInt("types");
                int outstanding = rs.getInt("outstanding");
                int bestSell = rs.getInt("bestsell");
                int forOld = rs.getInt("forOld");
                int form = rs.getInt("form");
                String thumbnail = rs.getString("thumbnail");
                int status = rs.getInt("status");

                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail, status));
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

        return listProduct;
    }

    public List<Product> getListProductByFilter(String namePro, String idPro, String sort, int offset, int noOfRecords) {
        List<Product> listProduct = new ArrayList<Product>();

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "";
            if (sort.length() != 0 && sort.equalsIgnoreCase("asc")) {
                query = "select * from product where name like ? and id like ? order by price_disc asc limit ?,?";
            } else if (sort.length() != 0 && sort.equalsIgnoreCase("desc")) {
                query = "select * from product where name like ? and id like ? order by price_disc desc limit ?,?";
            } else {
                query = "select * from product where name like ? and id like ? limit ?,?";
            }
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, namePro + "%");
            pstmtObj.setString(2, idPro + "%");
            pstmtObj.setInt(3, offset);
            pstmtObj.setInt(4, noOfRecords);
            rs = pstmtObj.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String slug = rs.getString("slug");
                String desc = rs.getString("description");
                int rate = rs.getInt("rate");
                int amount_sold = rs.getInt("amount_sold");
                int price = rs.getInt("price");
                String spec = rs.getString("specification");
                String origin = rs.getString("origin");
                String brand = rs.getString("brand");
                int price_disc = rs.getInt("price_disc");
                int amount_rest = rs.getInt("amount_rest");
                String code_disc = rs.getString("code_disc");
                int dis_extra = rs.getInt("dis_extra");
                String content_detail_product = rs.getString("content_detail_product");
                int img = rs.getInt("img");
                int types = rs.getInt("types");
                int outstanding = rs.getInt("outstanding");
                int bestSell = rs.getInt("bestsell");
                int forOld = rs.getInt("forOld");
                int form = rs.getInt("form");
                String thumbnail = rs.getString("thumbnail");
                int status = rs.getInt("status");

                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail, status));
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

        return listProduct;
    }

    public void removeProduct(String idProduct) {
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "delete from product where id = ? ";
            pstmtObj = connObj.prepareStatement(query);

            pstmtObj.setString(1, idProduct);
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

    public void updateProductAllField(Product pro, String idCurrent) {
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "update product set name = ?, slug = ? , description =?,rate=?,amount_sold=?,price=?,specification=?,origin=?,brand=?,price_disc=?,amount_rest=?,code_disc=?,dis_extra=?,content_detail_product=?,img=?,types=?,outstanding=?,bestsell=?,forOld=?,form=?,thumbnail=?,status=? where id=?";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, pro.getName());
            pstmtObj.setString(2, pro.getSlug());
            pstmtObj.setString(3, pro.getDesc());
            pstmtObj.setInt(4, pro.getRate());
            pstmtObj.setInt(5, pro.getAmountSold());
            pstmtObj.setInt(6, pro.getPrice());
            pstmtObj.setString(7, pro.getSpecification());
            pstmtObj.setString(8, pro.getOrigin());
            pstmtObj.setString(9, pro.getBrand());
            pstmtObj.setInt(10, pro.getPriceDisc());
            pstmtObj.setInt(11, pro.getAmount());
            pstmtObj.setString(12, pro.getCodeDisc());
            pstmtObj.setInt(13, pro.getDiscExtra());
            pstmtObj.setString(14, pro.getContentDetailProduct());
            pstmtObj.setInt(15, pro.getImg());
            pstmtObj.setInt(16, pro.getTypes());
            pstmtObj.setInt(17, pro.getOutstanding());
            pstmtObj.setInt(18, pro.getBestSell());
            pstmtObj.setInt(19, pro.getForOld());
            pstmtObj.setInt(20, pro.getForm());
            pstmtObj.setString(21, pro.getThumbnail());
            pstmtObj.setInt(22, pro.getStatus());
            pstmtObj.setString(23, idCurrent);


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

    public void createProduct(Product pro) {
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "insert into product (name,slug,description,rate,amount_sold,price,specification,origin,brand,price_disc,amount_rest,code_disc,dis_extra,content_detail_product,img,types,outstanding,bestsell,forOld,form,thumbnail,status,id) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,UUID())";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, pro.getName());
            pstmtObj.setString(2, pro.getSlug());
            pstmtObj.setString(3, pro.getDesc());
            pstmtObj.setInt(4, pro.getRate());
            pstmtObj.setInt(5, pro.getAmountSold());
            pstmtObj.setInt(6, pro.getPrice());
            pstmtObj.setString(7, pro.getSpecification());
            pstmtObj.setString(8, pro.getOrigin());
            pstmtObj.setString(9, pro.getBrand());
            pstmtObj.setInt(10, pro.getPriceDisc());
            pstmtObj.setInt(11, pro.getAmount());
            pstmtObj.setString(12, pro.getCodeDisc());
            pstmtObj.setInt(13, pro.getDiscExtra());
            pstmtObj.setString(14, pro.getContentDetailProduct());
            pstmtObj.setInt(15, pro.getImg());
            pstmtObj.setInt(16, pro.getTypes());
            pstmtObj.setInt(17, pro.getOutstanding());
            pstmtObj.setInt(18, pro.getBestSell());
            pstmtObj.setInt(19, pro.getForOld());
            pstmtObj.setInt(20, pro.getForm());
            pstmtObj.setString(21, pro.getThumbnail());
            pstmtObj.setInt(22, pro.getStatus());

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

    public List<Product> getListProductByAdmin(String namePro, String idPro) {
        List<Product> listProduct = new ArrayList<Product>();
        if (namePro == null) namePro = "";
        if (idPro == null) idPro = "";
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from product where name like ? and idPro like = ?";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, namePro.trim() + "%");
            pstmtObj.setString(2, idPro.trim() + "%");
            rs = pstmtObj.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String slug = rs.getString("slug");
                String desc = rs.getString("description");
                int rate = rs.getInt("rate");
                int amount_sold = rs.getInt("amount_sold");
                int price = rs.getInt("price");
                String spec = rs.getString("specification");
                String origin = rs.getString("origin");
                String brand = rs.getString("brand");
                int price_disc = rs.getInt("price_disc");
                int amount_rest = rs.getInt("amount_rest");
                String code_disc = rs.getString("code_disc");
                int dis_extra = rs.getInt("dis_extra");
                String content_detail_product = rs.getString("content_detail_product");
                int img = rs.getInt("img");
                int types = rs.getInt("types");
                int outstanding = rs.getInt("outstanding");
                int bestSell = rs.getInt("bestsell");
                int forOld = rs.getInt("forOld");
                int form = rs.getInt("form");
                String thumbnail = rs.getString("thumbnail");
                int status = rs.getInt("status");

                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail, status));
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

        return listProduct;
    }

    public List<Product> getListProductWithStatus(int statusParam) {
        List<Product> listProduct = new ArrayList<Product>();
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from product ";
            if (statusParam >= 0 && statusParam!=999) query += "where status=?";
            pstmtObj = connObj.prepareStatement(query);
            if (statusParam >= 0 && statusParam!=999) pstmtObj.setInt(1, statusParam);
            rs = pstmtObj.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String slug = rs.getString("slug");
                String desc = rs.getString("description");
                int rate = rs.getInt("rate");
                int amount_sold = rs.getInt("amount_sold");
                int price = rs.getInt("price");
                String spec = rs.getString("specification");
                String origin = rs.getString("origin");
                String brand = rs.getString("brand");
                int price_disc = rs.getInt("price_disc");
                int amount_rest = rs.getInt("amount_rest");
                String code_disc = rs.getString("code_disc");
                int dis_extra = rs.getInt("dis_extra");
                String content_detail_product = rs.getString("content_detail_product");
                int img = rs.getInt("img");
                int types = rs.getInt("types");
                int outstanding = rs.getInt("outstanding");
                int bestSell = rs.getInt("bestsell");
                int forOld = rs.getInt("forOld");
                int form = rs.getInt("form");
                String thumbnail = rs.getString("thumbnail");
                int status = rs.getInt("status");

                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail, status));
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

        return listProduct;
    }
}
