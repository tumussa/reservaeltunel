package com.tumussa.reservaeltunel.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tumussa.reservaeltunel.databases.DataBaseReservas;


//v.0.0.1
@Controller
public class HomeController {

	DataBaseReservas db = new DataBaseReservas();
	
	@RequestMapping("/")
	public String reservas() {
		return "reservas";
	}
	
	@RequestMapping("/r")
	public ModelAndView show(
			@RequestParam ("nombre") String nombre,
			@RequestParam ("telefono") String telefono,
			@RequestParam ("fecha") String fecha,
			@RequestParam ("comensales") int comensales,
			@RequestParam ("hora") String hora){
		ModelAndView mav = new ModelAndView();
		
		db.addReserva(nombre, fecha, hora, comensales, telefono);		
		
		mav.setViewName("reservaExito");
		return mav;
	}
	
}
