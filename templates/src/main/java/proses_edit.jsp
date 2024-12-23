<!-- proses_edit.jsp -->
<%@page import="java.sql.*" %> <%@page import="koneksi.Koneksi" %> <% try {
Connection conn = Koneksi.getKoneksi(); String sql = "UPDATE barang SET nama=?,
harga=?, stok=?, keterangan=? WHERE id=?"; PreparedStatement ps =
conn.prepareStatement(sql); ps.setString(1, request.getParameter("nama"));
ps.setDouble(2, Double.parseDouble(request.getParameter("harga"))); ps.setInt(3,
Integer.parseInt(request.getParameter("stok"))); ps.setString(4,
request.getParameter("keterangan")); ps.setInt(5,
Integer.parseInt(request.getParameter("id"))); ps.executeUpdate();
response.sendRedirect("view.jsp"); } catch(Exception e) { out.println("Error: "
+ e.getMessage()); } %>
