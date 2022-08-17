package org.study.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.study.home.mapper.CartMapper;
import org.study.home.model.CartDTO;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	private CartMapper cartMapper;
	
	@Override
	public int addCart(CartDTO cart) {
		// 장바구니 데이터 체크
				CartDTO checkCart = cartMapper.checkCart(cart);
				System.out.println("addCar===================:" + checkCart + "aaaa:"+cart);
				if(checkCart != null) {
					return 2;
				}
				
				// 장바구니 등록 & 에러 시 0반환
				try {
					return cartMapper.addCart(cart);
				} catch (Exception e) {
					return 0;
				}
		}

	@Override
	public List<CartDTO> getCartList(String user_id) {

		List<CartDTO> cart = cartMapper.getCart(user_id);
		
//		for(CartDTO dto : cart) {
//			
//		}
//		
		return cart;
	}
	
	
}