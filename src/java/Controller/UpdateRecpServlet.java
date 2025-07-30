package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Database.DatabaseConnection;

@WebServlet("/UpdateRecpServlet")
public class UpdateRecpServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String mobile = request.getParameter("Mobile");

        try {
            Connection con = DatabaseConnection.initializeDatabase();
            PreparedStatement pst = con.prepareStatement("UPDATE recp SET fname=?, lname=? WHERE mobile=?");
            pst.setString(1, fname);
            pst.setString(2, lname);
            pst.setString(3, mobile);

            int rowsUpdated = pst.executeUpdate();
            if (rowsUpdated > 0) {
                response.sendRedirect("adminRecpList.jsp"); // Redirect to receptionist list page
            } else {
                // Handle update failure
            }
        } catch (SQLException ex) {
            // Handle SQL exception
        } catch (Exception ex) {
            // Handle other exceptions
        }
    }
}
