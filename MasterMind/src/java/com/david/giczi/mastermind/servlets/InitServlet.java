/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.david.giczi.mastermind.servlets;

import com.david.giczi.mastermind.model.MasterMindLogic;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author GicziD
 */
public class InitServlet extends HttpServlet {

    
    @EJB
    private MasterMindLogic service;
    
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
       
        request.getSession().invalidate();
       
        List<Integer> taskStore = service.randDifferentColors(6);   
        List<Integer> tippStore = new ArrayList<>();
        List<Integer> resultStore = new ArrayList<>();
        List<Integer> colorNumbers = new ArrayList<>();
        
        for (int i = 4; i < 11; i++) {
            colorNumbers.add(i);
        }
        
       request.getSession().setAttribute("task", taskStore);
       request.getSession().setAttribute("tipp", tippStore);
       request.getSession().setAttribute("result", resultStore);
       request.getSession().setAttribute("counter", 0);
       
        request.setAttribute("message", -1);
        request.setAttribute("task", taskStore);
        request.setAttribute("result", resultStore);
        request.setAttribute("tipps", tippStore);
        request.setAttribute("numberOfColors", colorNumbers);
        request.setAttribute("number", 6);
        request.getRequestDispatcher("board.jsp").forward(request, response);
        
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
