package DAO;

import entity.Account;

import entity.Product;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FoodDAO {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Food", "root", "tra11032001");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    public static int save(Product u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("insert into mainFood(img,name,title,price,typeProduct) values(?,?,?,?,?)");
            ps.setString(1, u.getImg());
            ps.setString(2, u.getName());
            ps.setString(3, u.getTitle());
            ps.setString(4, u.getPrice());
            ps.setString(5,u.getTypeProduct());

            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();

        }
        return status;
    }

    public static int update(Product u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update mainFood set img=?,name=?,title=?,price=?,typeProduct=? where id=?");
            ps.setString(1, u.getImg());
            ps.setString(2, u.getName());
            ps.setString(3, u.getTitle());
            ps.setString(4, u.getPrice());
            ps.setString(5,u.getTypeProduct());
            ps.setInt(6, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Product u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from mainFood where id=?");
            ps.setInt(1, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<Product> getAllRecords() {
        List<Product> list = new ArrayList<Product>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from mainFood");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product u = new Product();
                u.setId(rs.getInt("id"));
                u.setImg(rs.getString("img"));
                u.setName(rs.getString("name"));
                u.setTitle(rs.getString("title"));
                u.setPrice(rs.getString("price"));
                u.setTypeProduct(rs.getString("typeProduct"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static Product getRecordById(int id) {
        Product u = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from mainFood where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new Product();
                u.setId(rs.getInt("id"));
                u.setImg(rs.getString("img"));
                u.setName(rs.getString("name"));
                u.setTitle(rs.getString("title"));
                u.setPrice(rs.getString("price"));
                u.setTypeProduct(rs.getString("typeProduct"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }


    public Product getFoodById( String id) {

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from mainFood where id=?");
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product( rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));

            }
        } catch (Exception e) {

        }
        return null;
    }
    public Account login(String user, String pass){
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from account where user = ? and pass = ? ");
            ps.setString(1,user);
            ps.setString(2,pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));



            }
        } catch (Exception e) {

        }
        return null;
    }
    public Account checkAccountExist(String user){
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from account where user = ?");
            ps.setString(1,user);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));



            }
        } catch (Exception e) {

        }
        return null;
    }
    public void signUp(String user, String pass){
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("insert into account (user,pass,isSell,isAdmin) values(?,?,0,0)");
            ps.setString(1,user);
            ps.setString(2,pass);
            ps.executeUpdate();

        } catch (Exception e) {

        }

    }
    public static List<Product> getFoodSellId(int id) {
        List<Product> list = new ArrayList<>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from mainFood where sell_id =?");
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),

                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                ));






            }
        } catch (Exception e) {

        }
        return list;
    }
    public void deleteProduct(String pid){

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from mainFood where id=?");
            ps.setString(1,pid);
            ps.executeUpdate();

        } catch (Exception e) {
            //System.out.println(e);
        }


    }
    public void insertProduct(String name, String image,String price, String title ,String typeProduct, int sid){
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("insert into mainFood(name,img,price,title,typeProduct,sell_id) values(?,?,?,?,?,?)");
            ps.setString(1,name);
            ps.setString(2,image);
            ps.setString(3,price);
            ps.setString(4,title);
            ps.setString(5,typeProduct);
            ps.setInt(6,sid);

            ps.executeUpdate();
        } catch (Exception e) {


        }
    }
    public void editProduct(String name, String image, String price,String title, String typeProduct , String pid){
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update mainFood set name=?,img=?,price =?,title=?,typeProduct=? where id=?");
            ps.setString(1,name);
            ps.setString(2,image);
            ps.setString(3,price);
            ps.setString(4,title);
            ps.setString(5,typeProduct);
            ps.setString(6,pid);

            ps.executeUpdate();
        } catch (Exception e) {


        }
    }

}
