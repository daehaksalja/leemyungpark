package org.study.home.model;

import java.sql.Timestamp;
import java.util.List;

import lombok.Data;
@Data
public class ShipDTO {

	private int shipId;
	
	/* 상품 이름 */
	private String shipName;
		
	/* 상품 가격 */
	private int shipPrice;
	
	/* 상품 재고 */
	private int shipStock;
/* 상품 소개 */
	private String shipIntro;
	
	/* 등록 날짜 */
	private Timestamp regDate;
	
	/* 수정 날짜 */
	private Timestamp updateDate;
	
	/* 이미지 정보 */
	private List<AttachImageDTO> imageList;
}
