package controller;


import DAO.FoodDAO;

import entity.MainFood;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FoodDt",urlPatterns={"/detail"})
public class FoodDt extends HttpServlet {
    protected void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{

        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        FoodDAO foodDAO = new FoodDAO();
        MainFood f = foodDAO.getFoodById((id));
        request.setAttribute("detail",f);
        request.getRequestDispatcher("Detail.jsp").forward(request,response);


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