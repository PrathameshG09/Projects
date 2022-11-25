package com.demo.hospital;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HospitalManagement {

	public static int insert(GetSet g) {
		int status = 0;
		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "patient", "patient");

			String s = "insert into pdetails value(?,?,?,?)";

			PreparedStatement ps = con.prepareStatement(s);
			ps.setInt(1, g.getId());
			ps.setString(2, g.getPname());
			ps.setInt(4, g.getBill());
			ps.setString(3, g.getDisease());

			status = ps.executeUpdate();

			System.out.println(status + " record inserted");

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;

	}

	public static List<GetSet> select() {

		List<GetSet> li = new ArrayList<GetSet>();
		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "patient", "patient");

			String s = "select * from pdetails";

			PreparedStatement ps = con.prepareStatement(s);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				GetSet g = new GetSet();

				g.setPname(rs.getString(2));
				g.setBill(rs.getInt(4));
				g.setDisease(rs.getString(3));
				g.setId(rs.getInt(1));

				li.add(g);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return li;
	}

	public static GetSet getPatientById(int id) {

		GetSet gs = new GetSet();

		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "patient", "patient");

			String s = "select * from pdetails where id=?";

			PreparedStatement ps = con.prepareStatement(s);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				gs.setPname(rs.getString(2));
				gs.setBill(rs.getInt(4));
				gs.setDisease(rs.getString(3));
				gs.setId(rs.getInt(1));
			}

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return gs;
	}

	public static int update(GetSet s) {
		int status = 0;

		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "patient", "patient");

			String s1 = "update pdetails set patientname=?,bill=?,disease=? where id=?  ";
			PreparedStatement ps = con.prepareStatement(s1);
			ps.setInt(4, s.getId());
			System.out.println(s.getPname());

			ps.setString(1, s.getPname());
			System.out.println(s.getId());
			System.out.println(s.getDisease());
			System.out.println(s.getBill());
			ps.setString(3, s.getDisease());
			ps.setInt(2, s.getBill());
			
			

			status = ps.executeUpdate();
			System.out.println(status);

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int delete(int id) {

		int status = 0;

		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "patient", "patient");

			String s1 = "delete from pdetails where id=?";
			PreparedStatement ps = con.prepareStatement(s1);
			ps.setInt(1, id);

			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

}
