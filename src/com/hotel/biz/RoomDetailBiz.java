package com.hotel.biz;

import com.hotel.entity.Roomdetail;

public interface RoomDetailBiz {
	// ��ӿͷ���ϸ
	public int add(Roomdetail rmd) throws Exception;

	// ���ݿͷ�Id��ѯ�ͷ���ϸ
	public Roomdetail findByRid(Integer rid) throws Exception;

	// ɾ���ͷ���ϸ
	public int deleteRoomDeatilByRid(Integer rid) throws Exception;

}
