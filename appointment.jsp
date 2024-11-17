<%@ page import="java.sql.*" %>
<% 
    String patientName = request.getParameter("patient_name");
    String contact = request.getParameter("contact");
    String appointmentDate = request.getParameter("appointment_date");
    String doctorName = request.getParameter("doctor_name");
    String reason = request.getParameter("reason");

    try {
        // DB connection details
        String url = "jdbc:mysql://localhost:3306/doctor_appointment";
        String user = "root";
        String password = "Abitha28";

        // Connect to the database
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, user, password);

        // Insert form data into the table
        String query = "INSERT INTO appointments (patient_name, contact, appointment_date, doctor_name, reason) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement stmt = con.prepareStatement(query);
        stmt.setString(1, patientName);
        stmt.setString(2, contact);
        stmt.setString(3, appointmentDate);
        stmt.setString(4, doctorName);
        stmt.setString(5, reason);
        stmt.executeUpdate();

        // Success message
        out.println("<h2>Appointment Scheduled Successfully!</h2>");

    } catch (Exception e) {
        out.println("<h2>Error: " + e.getMessage() + "</h2>");
    }
%>
