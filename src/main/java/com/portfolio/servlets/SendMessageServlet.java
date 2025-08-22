package com.portfolio.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sendMessage")
public class SendMessageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:postgresql://localhost:5432/Sharan";
    private static final String JDBC_USER = "postgres";   
    private static final String JDBC_PASS = "Sharan01"; 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);

            String sql = "INSERT INTO contact_messages (name, email, message) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, message);

            int rows = pstmt.executeUpdate();
            if (rows > 0) {
                request.setAttribute("status", "success");
                request.setAttribute("msg", "Your message was sent successfully!");
            } else {
                request.setAttribute("status", "error");
                request.setAttribute("msg", "Failed to send your message.");
            }

        } catch (Exception e) {
            request.setAttribute("status", "error");
            request.setAttribute("msg", "Error: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception ignored) {}
        }

        // Forward to JSP
        request.getRequestDispatcher("messageStatus.jsp").forward(request, response);
    }
}
