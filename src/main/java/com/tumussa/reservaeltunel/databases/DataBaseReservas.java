package com.tumussa.reservaeltunel.databases;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

public class DataBaseReservas extends DataBaseGenerica {
	private JdbcTemplate jdbc;
	
	public static final String BASE_DATOS = "reservas";
	
	public DataBaseReservas(){
		this.jdbc = new JdbcTemplate(Conector.getDataSource());
	}
	
	
	public int addReserva(String nombre, String fecha, String hora, int comensales,String telefono){
		int filas = -1;
		String sql = "INSERT INTO reservas(nombre,fecha,hora,comensales,telefono) VALUES (?,?,?,?,?)";
		try {
			jdbc.update(sql,new Object[]{nombre,fecha,hora,comensales,telefono});
			System.out.println("Se ha añadido una nueva reserva");
		} catch (DataAccessException e) {
			System.out.println("Fallo en la sentecia SQL");
		}
				
		return filas;
	}
	
}
