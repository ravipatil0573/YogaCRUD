<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Database.DatabaseConnection" %>

<%
    String id = request.getParameter("id");

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        con = DatabaseConnection.initializeDatabase();

        // Fetch doctor details based on ID
        String sql = "SELECT * FROM trainer WHERE ID = ?";
        ps = con.prepareStatement(sql);
        ps.setString(1, id);
        rs = ps.executeQuery();

        if (rs.next()) {
            String firstName = rs.getString("fname");
            String lastName = rs.getString("lname");
            String gender = rs.getString("gender");
            String mobile = rs.getString("mobile");
            String city = rs.getString("city");
            String email = rs.getString("email");
            String age = rs.getString("age");
            String address = rs.getString("address");
            String date = rs.getString("date");
            String qualification = rs.getString("qualification");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Trainer</title>
    <!-- Add your stylesheets and scripts here if needed -->
</head>
<body>
    <h2>Update Trainer Information</h2>
    <form action="UpdateTrainerServlet" method="post">
        <input type="hidden" name="id" value="<%= id %>">
        
        <!-- Add other input fields for doctor details -->
        <label for="firstName">First Name:</label>
        <input type="text" name="firstName" value="<%= firstName %>">
        <!-- Add other input fields similarly for other details -->

        <input type="submit" value="Update Trainer">
    </form>
</body>
</html>

<%
        } else {
            out.println("trainer not found with ID: " + id);
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>