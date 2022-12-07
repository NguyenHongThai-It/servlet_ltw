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

                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail));
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


    public List<Product> getListProductByCat(int catType, String idMenu) {
        List<Product> listProduct = new ArrayList<Product>();


        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "SELECT DISTINCT(p.id),p.name,p.slug,p.description,p.rate,p.amount_sold,p.price,p.specification,p.origin,p.brand,p.price_disc,p.amount_rest,p.code_disc,p.dis_extra,p.content_detail_product,p.img,p.types,p.outstanding,p.bestsell,p.forOld,p.form,p.thumbnail FROM product p join categories cat on p.types = ? join menu me on cat.parentid = ? ";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setInt(1, catType);
            pstmtObj.setString(2, idMenu);
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


                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail));
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

    public List<Product> getListProductByCatPageProduct(int catType) {
        List<Product> listProduct = new ArrayList<Product>();


        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "SELECT DISTINCT(p.id),p.name,p.slug,p.description,p.rate,p.amount_sold,p.price,p.specification,p.origin,p.brand,p.price_disc,p.amount_rest,p.code_disc,p.dis_extra,p.content_detail_product,p.img,p.types,p.outstanding,p.bestsell,p.forOld,p.form,p.thumbnail FROM product p join categories cat on p.types = cat.types where cat.types = ?";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setInt(1, catType);
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


                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail));
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

                pro = (new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail));
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

    public List<Product> getListProductByName(String nameSearch) {
        List<Product> listProduct = new ArrayList<Product>();

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from product where name like ? limit 12";

            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, nameSearch.trim() + "%");
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

                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail));
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

    public List<Product> getListProduct(int lim) {
        List<Product> listProduct = new ArrayList<Product>();

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from product limit ?";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setInt(1, lim);
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

                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail));
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

    public List<Product> getListProductByFilter(String type, String sort) {
        List<Product> listProduct = new ArrayList<Product>();

        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "Select * from product where form IN (?) limit 12";
            if (sort != null && sort.equals("desc"))
                query = "Select * from product where form IN (?) order by price_disc desc limit 12";
            if (sort != null && sort.equals("asc"))
                query = "Select * from product where form IN (?) order by price_disc asc limit 12";
            pstmtObj = connObj.prepareStatement(query);
            pstmtObj.setString(1, type);
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

                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail));
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

    public void updateProductAllField(Product pro) {
        try {
            jdbcObj = new ConnectionPool();

            DataSource dataSource = jdbcObj.setUpPool();
            connObj = dataSource.getConnection();
            String query = "update product set name = ?, slug = ? , description =?,rate=?,amount_sold=?,price=?,specification=?,origin=?,brand=?,price_disc=?,amount_rest=?,code_disc=?,dis_extra=?,content_detail_product=?,img=?,types=?,outstanding=?bestsell=?,forOld=?,form=?,thumbnail=?";
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

                listProduct.add(new Product(id, name, slug, desc, rate, amount_sold, price, spec, origin, brand, price_disc, amount_rest, code_disc, dis_extra, content_detail_product, img, types, outstanding, bestSell, forOld, form, thumbnail));
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
