<%@page import="java.sql.*" %>
<%@page import="koneksi.Koneksi" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Barang</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <%
            // Check session
            if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
                return;
            }
        %>
        <div class="container mt-5">
            <h2>Data Barang</h2>
            <a href="add.jsp" class="btn btn-success mb-3">Tambah Barang</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nama</th>
                        <th>Harga</th>
                        <th>Stok</th>
                        <th>Keterangan</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            Connection conn = Koneksi.getKoneksi();
                            Statement stmt = conn.createStatement();
                            ResultSet rs = stmt.executeQuery("SELECT * FROM barang");
                            
                            while(rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getInt("id") %></td>
                        <td><%= rs.getString("nama") %></td>
                        <td><%= rs.getDouble("harga") %></td>
                        <td><%= rs.getInt("stok") %></td>
                        <td><%= rs.getString("keterangan") %></td>
                        <td>
                            <a href="edit.jsp?id=<%= rs.getInt("id") %>" class="btn btn-warning btn-sm">Edit</a>
                            <a href="delete?id=<%= rs.getInt("id") %>" class="btn btn-danger btn-sm" onclick="return confirm('Yakin ingin menghapus?')">Delete</a>
                        </td>
                    </tr>
                    <%
                            }
                            rs.close();
                            stmt.close();
                        } catch(Exception e) {
                            out.println("Error: " + e.getMessage());
                        }
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>