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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Judut
 */
@WebServlet(name = "PlayServlet", urlPatterns = {"/play"})
public class PlayServlet extends HttpServlet {

    
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
       
        String color1 = request.getParameter("color1");
        String color2 = request.getParameter("color2");
        String color3 = request.getParameter("color3");
        String color4 = request.getParameter("color4");
        String numbColor = request.getParameter("number");
        String diffColor = request.getParameter("different");
        
        List<Integer> tipp = new ArrayList<>();
        List<Integer> colorNumbers = new ArrayList<>();
        
        for (int i = 4; i < 11; i++) {
            colorNumbers.add(i);
        }
        
        tipp.add(Integer.parseInt(color1));
        tipp.add(Integer.parseInt(color2));
        tipp.add(Integer.parseInt(color3));
        tipp.add(Integer.parseInt(color4));
        
        List<Integer> task = (List<Integer>) request.getSession().getAttribute("task");
       
        List<Integer> resultStore = service.evalutate(task, tipp); 
        
        List<Integer> tippStore = (List<Integer>) request.getSession().getAttribute("tipp");
      
        for (Integer tp : tipp) {
            tippStore.add(tp);
        }
        request.getSession().setAttribute("tipp", tippStore);
        
        List<Integer> resultstList = (List<Integer>) request.getSession().getAttribute("result");
        
        for (Integer result : resultStore) {
            resultstList.add(result);
        }
        
        request.getSession().setAttribute("result", resultstList);
        
        int counter =(int) request.getSession().getAttribute("counter");
        counter++;
        request.getSession().setAttribute("counter", counter);
        
         if ( "false".equals(diffColor) ) {
            
            request.setAttribute("checking", 1);
            
        }
        
        if ( service.isEndOfTheGame(resultStore) ){
            
            request.setAttribute("message", 1);
            
        }
        else if ( counter == 10 ) {
            
            request.setAttribute("message", 2);
            
        }
        else {
            
            request.setAttribute("message", -1);
            
        }
         
        request.setAttribute("task", task);
        request.setAttribute("result", resultstList);
        request.setAttribute("tipps", tippStore);
        request.setAttribute("numberOfColors", colorNumbers);
        request.setAttribute("number", Integer.parseInt(numbColor));
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
