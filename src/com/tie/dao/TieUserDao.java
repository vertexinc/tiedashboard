package com.tie.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.tie.model.TieApp;
import com.tie.model.TieUser;

public class TieUserDao extends BaseDao {
	public TieUser findTieUserByName(String name) {
		getConnection();

		TieUser tieUser = null;
		try {
			String sql = "select * from mx.tieapp where name = ?";

			PreparedStatement selectStatement = conn.prepareStatement(sql);
			selectStatement.setString(1, name);
			rs = selectStatement.executeQuery();

			while (rs.next()) {
				int tieUserId = rs.getInt("tieUserId");
				String uname = rs.getString("name");
				String code = rs.getString("code");
				String description = rs.getString("description");
				String email = rs.getString("email");
				String ctsUserId = rs.getString("ctsUserId");
				String ctsUserPwd = rs.getString("ctsUserPwd");
				String ctsUserCertificate = rs.getString("ctsUserCertificate");
				int tieAppId = rs.getInt("tieAppId");
				int isExternal = rs.getInt("isExternal");

				tieUser = new TieUser(tieUserId, uname, code, description, email, ctsUserId, ctsUserPwd,
						ctsUserCertificate, tieAppId, isExternal);
				// tieapp = new TieApp(name,description);
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pst != null) {
				try {
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}

		return tieUser;
	}
}
