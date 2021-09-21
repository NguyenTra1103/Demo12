package controller;

import DAO.FoodDAO;
import entity.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="SignUpControl",value = {"/signup"})
public class SignUpControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String rePass = request.getParameter("repass");
       if(!password.equals(rePass)){
          /* String errorString = "Mật khẩu không đúng !";
           request.setAttribute("errorString", errorString);
           request.getRequestDispatcher("login.jsp").forward(request,response);*/
           response.sendRedirect("login.jsp");
       }
    FoodDAO foodDAO = new FoodDAO();
       Account account = foodDAO.checkAccountExist(username);
       if(account == null){
           // thuc hien dang ki
           foodDAO.signUp(username,password);
           response.sendRedirect("listFood");
       }else {
           response.sendRedirect("login.jsp");
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
