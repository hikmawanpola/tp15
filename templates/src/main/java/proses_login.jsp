<!-- proses_login.jsp -->
<% String username = request.getParameter("username"); String password =
request.getParameter("password"); // Ini hanya contoh sederhana. Dalam praktik
nyata, gunakan database dan enkripsi password if(username.equals("admin") &&
password.equals("admin123")) { session.setAttribute("username", username);
response.sendRedirect("view.jsp"); } else { response.sendRedirect("login.jsp");
} %>
