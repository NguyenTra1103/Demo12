package controller;

import DAO.FoodDAO;
import entity.Account;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="LoginControl",value = {"/login"})
public class LoginControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String username = request.getParameter("user");
    String password = request.getParameter("pass");
        FoodDAO foodDAO = new FoodDAO();
        Account account = foodDAO.login(username,password);
        if(account == null){
            String errorString = "Invalid userName or Password";
            request.setAttribute("errorString", errorString);
           request.getRequestDispatcher("login.jsp").forward(request,response);



        }else {
          /*  request.getRequestDispatcher("listFood").forward(request,response);*/
            response.sendRedirect("listFood");



        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }
}
