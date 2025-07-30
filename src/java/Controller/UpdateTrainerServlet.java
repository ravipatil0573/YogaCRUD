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

@WebServlet("/UpdateTrainerServlet")
public class UpdateTrainerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        // Retrieve other form parameters

        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DatabaseConnection.initializeDatabase();

            // Prepare SQL update statement
            String sql = "UPDATE trainer SET fname=?, lname=?, gender=?, mobile=?, city=?, email=?, age=?, address=?, date=?, qualification=? WHERE ID=?";
            ps = con.prepareStatement(sql);

            // Set parameters for the update statement
            ps.setString(1, request.getParameter("firstName"));
            // Set other parameters similarly for other details

            ps.setString(11, id); // ID is the primary key

            // Execute the update statement
            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                response.sendRedirect("adminTrainerList.jsp"); // Redirect to trainer list page after successful update
            } else {
                response.getWriter().println("Failed to update trainer information.");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                // Close resources
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}