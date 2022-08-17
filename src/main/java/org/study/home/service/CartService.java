package org.study.home.service;

import org.study.home.model.CartDTO;

public interface CartService {
	/* 장바구니 추가 */
	public int addCart(CartDTO cart);
}
