package org.study.home.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.study.home.model.CartDTO;
import org.study.home.model.MemberDTO;
import org.study.home.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	@PostMapping("/cart/add")
	@ResponseBody
	public String addCartPOST(CartDTO cart, HttpServletRequest request) {
		// 로그인 체크
		System.out.println("addCartPost==========================000");
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("member");
		System.out.println("addCartPost==========================0" + dto);
		if(dto == null) {
			return "5";
		}
		
		// 카트 등록
		System.out.println("addCartPost==========================1");
		int result = cartService.addCart(cart);
		System.out.println("addCartPost==========================2");
		
		return result + "";
	}
}
