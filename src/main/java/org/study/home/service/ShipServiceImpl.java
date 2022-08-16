package org.study.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.study.home.mapper.ShipMapper;
import org.study.home.model.Criteria;
import org.study.home.model.ShipDTO;

@Service
public class ShipServiceImpl implements ShipService{
	@Autowired
	private ShipMapper shipMapper;
	
	/* 상품 검색 */
	@Override
	public List<ShipDTO> getGoodsList(Criteria cri) {
		

		
		return shipMapper.getGoodsList(cri);
	}

	/* 사품 총 갯수 */
	@Override
	public int goodsGetTotal(Criteria cri) {
		

		
		return shipMapper.goodsGetTotal(cri);
		
	}
}
