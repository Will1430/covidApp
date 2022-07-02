package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {
	
	private static String INSERT_SQL = ("INSERT INTO usuario (nome, email, cidade, estado, cep, senha) VALUES ( ?, ?, ?, ?, ?, ?)");
	private static String SEARCH_SQL = ("SELECT * FROM usuario WHERE email = ?");
	
	public static void inserirUsuario(Usuario u) throws InstantiationException, IllegalAccessException, ClassNotFoundException{
			
			try {
				DAO d = new DAO();
				Connection con = d.connect();
				
				PreparedStatement stmt = con.prepareStatement(INSERT_SQL);
				
				stmt.setString( 1, u.getNome());
				stmt.setString( 2, u.getEmail());
				stmt.setString( 3, u.getCidade());
				stmt.setString( 4, u.getEstado());
				stmt.setString( 5, u.getCep());
				stmt.setString( 6, u.getSenha());
				stmt.execute();
				
				stmt.close();
				con.close();
				
			} catch(SQLException e) {
				System.out.println(e);
			}
		
		
		}
		
	
		public static Usuario buscarUsuarioPorEmail(String email) {
			
			Usuario u = null;
			
			try {
				DAO d = new DAO();
				Connection con = d.connect();
			
				PreparedStatement stmt = con.prepareStatement(SEARCH_SQL);
				stmt.setString(1, email);
				
				ResultSet rs = stmt.executeQuery();
				
				if(rs.next()) {
					
					String senha = rs.getString("senha");
					
					u = new Usuario();
					u.setEmail(email);
					u.setSenha(senha);
					
				}
				
				stmt.close();
				con.close();

				
				}catch(SQLException e) {
					System.out.println(e);
				}
			return u;
		}
}