package org.study.home.service;

import java.util.List;

import org.study.home.model.Criteria;
import org.study.home.model.ShipDTO;

public interface AdminService {
	public void shipEnroll(ShipDTO ship);

	public List<ShipDTO> goodsGetList(Criteria cri);

	public int goodsGetTotal(Criteria cri) throws Exception;

	ShipDTO goodsRead(String shipId);

	void goodsUpdate(ShipDTO dto);
	
	/* 상품 조회 페이지 */
	public ShipDTO goodsGetDetail(int shipId);	
	
	/* 상품 수정 */
	public int goodsModify(ShipDTO dto);	
}
