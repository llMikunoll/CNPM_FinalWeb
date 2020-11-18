/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
@WebServlet(name = "GetForm", urlPatterns = {"/GetForm"})
public class GetForm extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        

        try {
            try {
                String name = request.getParameter("name");
                int phone = Integer.parseInt(request.getParameter("phone"));
                String typeRoom = request.getParameter("typeRoom");
                int numRoom = Integer.parseInt(request.getParameter("numRoom"));

                String dayRegis = request.getParameter("day");
                SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
                Date day = (Date) sdf.parse(dayRegis);
//                String req=request.getParameter("day");
                
                
                

                int hour = Integer.parseInt(request.getParameter("hour"));
                int min = Integer.parseInt(request.getParameter("min"));
                String time = request.getParameter("time");

                //Connection conn = new ConnectDB().getConnection();
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=FinalProject","sa","sa");
                
                PreparedStatement pre = conn.prepareStatement("insert into " + 
                "getForm(name,phone,typeRoom,numRoom,day,hour,min,time) values(?,?,?,?,?,?,?,?)");
                pre.setString(1, name);
                pre.setInt(2, phone);
                pre.setString(3, typeRoom);
                pre.setInt(4, numRoom);
                pre.setDate(5,day);
                pre.setInt(6, hour);
                pre.setInt(7, min);
                pre.setString(8, time);
                /*int kq = pre.executeUpdate();
                if (kq > 0) {
                    System.out.println("Thanh cong");
                } else {
                    System.out.println("that bai");
                }*/

                //request.setAttribute("add", "them thanh cong");
                pre.executeUpdate();
                request.setAttribute("add", "Add Student Successfully!");
                
                RequestDispatcher dis = request.getRequestDispatcher("Trangchu.jsp");
                dis.forward(request, response);
                
                //RequestDispatcher req = request.getRequestDispatcher("Form_DatPhong.jsp");
                //req.forward(request, response);
            } catch (Exception  ex) {
                //ex.printStackTrace();
            }
        } finally {
            out.close();
        }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
