package koneksi;

import java.sql.*;

public class Koneksi {
    private static Connection koneksi;
    
    public static Connection getKoneksi() {
        if (koneksi == null) {
            try {
                String url = "jdbc:mysql://localhost:3306/db_barang";
                String user = "root";
                String password = "";
                
                Class.forName("com.mysql.jdbc.Driver");
                koneksi = DriverManager.getConnection(url, user, password);
            } catch (ClassNotFoundException | SQLException e) {
                System.out.println("Error Koneksi: " + e.getMessage());
            }
        }
        return koneksi;
    }
}