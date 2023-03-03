package fr.fms.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
/**
 * Exo 2 Affichage du contenu de la table des articles sous Eclipse
 * @author ChevinA 2023
 *
 */
public class TestJdbcExo2 {

	public static void main(String[] args) {
		ArrayList<Article> articles = new ArrayList<Article>();
		String strSql = "SELECT * FROM T_Articles";
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		String url = "jdbc:mariadb://localhost:3306/shop";
		String login = "root";
		String password = "fms2023";
		try(Connection connection = DriverManager.getConnection(url, login, password)){
			try(Statement statement = connection.createStatement()){
				try(ResultSet resultSet = statement.executeQuery(strSql)){				
					while(resultSet.next()) {
						int rsIdUser = resultSet.getInt(1);
						String rsDescription = resultSet.getString(2);
						String rsBrand = resultSet.getString(3);
						double rsPrice = resultSet.getDouble(4);
						articles.add((new Article(rsIdUser, rsDescription, rsBrand, rsPrice)));
					}
				}
			}
					articles.forEach((a) -> {System.out.println(a.getId()+ " - " +a.getDescription()+ " - " +a.getBrand()+ " - " +a.getPrice());});
			
		}
		catch(SQLException e) {
			e.printStackTrace();
		}

	}

}
