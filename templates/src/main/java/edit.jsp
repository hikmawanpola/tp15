<%@page import="java.sql.*" %> <%@page import="koneksi.Koneksi" %> <%@page
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Edit Barang</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="container mt-5">
      <h2>Edit Barang</h2>
      <% String id = request.getParameter("id"); try { Connection conn =
      Koneksi.getKoneksi(); PreparedStatement ps = conn.prepareStatement("SELECT
      * FROM barang WHERE id = ?"); ps.setString(1, id); ResultSet rs =
      ps.executeQuery(); if(rs.next()) { %>
      <form action="proses_edit.jsp" method="POST">
        <input type="hidden" name="id" value="<%= rs.getString("id") %>">
        <div class="mb-3">
          <label class="form-label">Nama Barang</label>
          <input type="text" class="form-control" name="nama" value="<%=
          rs.getString("nama") %>" required>
        </div>
        <div class="mb-3">
          <label class="form-label">Harga</label>
          <input type="number" class="form-control" name="harga" value="<%=
          rs.getDouble("harga") %>" required>
        </div>
        <div class="mb-3">
          <label class="form-label">Stok</label>
          <input type="number" class="form-control" name="stok" value="<%=
          rs.getInt("stok") %>" required>
        </div>
        <div class="mb-3">
          <label class="form-label">Keterangan</label>
          <textarea class="form-control" name="keterangan">
<%= rs.getString("keterangan") %></textarea
          >
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
        <a href="view.jsp" class="btn btn-secondary">Kembali</a>
      </form>
      <% } rs.close(); ps.close(); } catch(Exception e) { out.println("Error: "
      + e.getMessage()); } %>
    </div>
  </body>
</html>
