package com.portfolio.servlets;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class AboutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("about.jsp");
        rd.forward(req, resp);
    }
}
