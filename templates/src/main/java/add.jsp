<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Tambah Barang</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="container mt-5">
      <h2>Tambah Barang Baru</h2>
      <form action="proses_tambah.jsp" method="POST">
        <div class="mb-3">
          <label class="form-label">Nama Barang</label>
          <input type="text" class="form-control" name="nama" required />
        </div>
        <div class="mb-3">
          <label class="form-label">Harga</label>
          <input type="number" class="form-control" name="harga" required />
        </div>
        <div class="mb-3">
          <label class="form-label">Stok</label>
          <input type="number" class="form-control" name="stok" required />
        </div>
        <div class="mb-3">
          <label class="form-label">Keterangan</label>
          <textarea class="form-control" name="keterangan"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
        <a href="view.jsp" class="btn btn-secondary">Kembali</a>
      </form>
    </div>
  </body>
</html>
