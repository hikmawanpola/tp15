<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Login</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="container mt-5">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <div class="card">
            <div class="card-header">
              <h3 class="text-center">Login</h3>
            </div>
            <div class="card-body">
              <form action="proses_login.jsp" method="POST">
                <div class="mb-3">
                  <label class="form-label">Username</label>
                  <input
                    type="text"
                    class="form-control"
                    name="username"
                    required
                  />
                </div>
                <div class="mb-3">
                  <label class="form-label">Password</label>
                  <input
                    type="password"
                    class="form-control"
                    name="password"
                    required
                  />
                </div>
                <button type="submit" class="btn btn-primary w-100">
                  Login
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>

<!-- proses_login.jsp -->
<% String username = request.getParameter("username"); String password =
request.getParameter("password"); // Ini hanya contoh sederhana. Dalam praktik
nyata, gunakan database dan enkripsi password if(username.equals("admin") &&
password.equals("admin123")) { session.setAttribute("username", username);
response.sendRedirect("view.jsp"); } else { response.sendRedirect("login.jsp");
} %>
