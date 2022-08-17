package org.study.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.study.home.model.OrderPageDTO;

@Controller
public class OrderController {
	@GetMapping("/order/{user_id}")
	public void orderPgaeGET(@PathVariable("user_id") String user_id, OrderPageDTO opd, Model model) {
		
		System.out.println("user_id : " + user_id);
		System.out.println("orders : " + opd.getOrders());
		
	}
}
