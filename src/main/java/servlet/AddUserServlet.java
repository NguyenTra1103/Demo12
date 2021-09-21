package servlet;

import DAO.FoodDAO;

import entity.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="AddUserServlet",urlPatterns ={"/addUser"})
public class AddUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        RequestDispatcher dispatcher = req.getRequestDispatcher("adduserform.jsp");
        dispatcher.forward(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Product user = new Product();
        user.setImg(req.getParameter("img"));
        user.setName(req.getParameter("name"));
        user.setTitle(req.getParameter("title"));
        user.setPrice(req.getParameter("price"));

        FoodDAO.save(user);
        resp.sendRedirect("/listUser");
    }

}
