package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DatabaseConnection;

@WebServlet("/UpdateCounsellorServlet")
public class UpdateCounsellorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("fname");
        String lastName = request.getParameter("lname");
        String mobile = request.getParameter("Mobile");

        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DatabaseConnection.initializeDatabase();
            String query = "UPDATE Counsellor SET fname=?, lname=? WHERE mobile=?";
            ps = con.prepareStatement(query);
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, mobile);
            
            int updatedRows = ps.executeUpdate();
            if(updatedRows > 0) {
                // Update successful
                response.sendRedirect("adminCounsellorList.jsp");
            } else {
                // Update failed
                response.getWriter().println("Failed to update Counsellor.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
