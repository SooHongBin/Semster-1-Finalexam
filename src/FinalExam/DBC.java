package FinalExam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBC {

	private Connection con;
	private Statement st;
	private ResultSet rs;

	private String jdbcUrl = "jdbc:mysql://localhost:3306/db";
	private String dbId = "root"; // 디비 ID
	private String dbPass = "sb0218sh"; // 디비 패스워드
	
	public DBC() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			st = con.createStatement();
			//connect = true;
		} catch (Exception e) {
			System.out.println(1);
			System.out.println("데이터베이스 연결 오류: " + e.getMessage());
		}
	}

	public boolean isAdmin(String adminID, String adminPassword) {
		try {
			String SQL = "SELECT * FROM ADMIN WHERE adminID = '" + adminID + "' and adminPassword ='" + adminPassword
					+ "'";
			rs = st.executeQuery(SQL);
			
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(2);
			System.out.println("데이터 베이스 연결 오류: " + e.getMessage());
		}
		return false;
	}
	
	public void getTag() {
		
		try {
			String SQL = "SELECT * FROM testtable";
			rs = st.executeQuery(SQL);
			System.out.println("e");
			
			
			while(rs.next()) {
				System.out.println(rs.getInt("code"));
				System.out.println(rs.getString("name"));
			}
			
		}catch(Exception e) {
			System.out.println(3);
			System.out.println("데이터 베이스 연결 오류: " + e.getMessage());
		}
	}

}