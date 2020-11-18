/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
@WebServlet(name = "Controller", urlPatterns = {"/Controller"})
public class Controller extends HttpServlet implements Servlet {

    private String action = null;

    public Controller() {
        super();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        action = request.getParameter("action");
        if (action == null) {
            action = "DEFAULT";
        }
        if ("DEFAULT".equals(action)) {
        } else if ("LOGIN".equals(action)) {
            this.login(request, response);
        } else if ("LOGOUT".equals(action)) {
            this.logout(request, response);
        }

    }

    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("txtusername");
        String password = request.getParameter("txtpassword");

        boolean isValid = AccountDAO.checkLogin(username, password);
        if (isValid) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/Trangchu.jsp");
            dispatch.forward(request, response);
        } else {
            RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/Login.jsp");
            dispatch.forward(request, response);
        }
    }

    public void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        //Huy Session
        session.invalidate();

        RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/Login.jsp");
        dispatch.forward(request, response);
    }

    public void datPhong(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
        String name = request.getParameter("name");
        int phone = Integer.parseInt(request.getParameter("phone"));
        String typeRoom = request.getParameter("typeRoom");
        int numRoom = Integer.parseInt(request.getParameter("numRoom"));

        String dayRegis = request.getParameter("day");
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        Date day = (Date) sdf.parse(dayRegis);

        int hour = Integer.parseInt(request.getParameter("hour"));
        int min = Integer.parseInt(request.getParameter("min"));
        String time = request.getParameter("time");

        //Connection conn = new ConnectDB().getConnection();
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=FinalProject", "sa", "sa");

        PreparedStatement pre = conn.prepareStatement("insert into "
                + "getForm(name,phone,typeRoom,numRoom,day,hour,min,time) values(?,?,?,?,?,?,?,?)");
        pre.setString(1, name);
        pre.setInt(2, phone);
        pre.setString(3, typeRoom);
        pre.setInt(4, numRoom);
        pre.setDate(5, day);
        pre.setInt(6, hour);
        pre.setInt(7, min);
        pre.setString(8, time);

        pre.executeUpdate();
        request.setAttribute("add", "Add Student Successfully!");

        RequestDispatcher dis = request.getRequestDispatcher("Trangchu.jsp");
        dis.forward(request, response);
    }
}
/**
 * Returns a short description of the servlet.
 *
 * @return a String containing servlet description
 */
@Override
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
