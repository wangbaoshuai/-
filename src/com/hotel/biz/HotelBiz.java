package com.hotel.biz;

import java.util.List;

import com.hotel.entity.Hcity;
import com.hotel.entity.Hotel;

public interface HotelBiz {
	// ��ӾƵ�
	public int addHotel(Hotel hotel) throws Exception;

	// ɾ���Ƶ�
	public int deleteHotel(Integer hid) throws Exception;

	// �޸ľƵ�
	public int updateHotel(Hotel hotel) throws Exception;

	// �������еľƵ�
	public List<Hotel> findHotels() throws Exception;

	// ����Id���ҾƵ�
	public Hotel findByhid(Integer hid) throws Exception;

	// ���ݳ��в�ѯ�Ƶ�
	public Hotel findByCity(Hcity hcity) throws Exception;

	// ����ҳ���������еľƵ�
	public List<Hotel> findHotelsByPage(Integer nowpage) throws Exception;

	public int findPages() throws Exception;

	// ���ݾƵ��ѯ�Ƶ��Լ��Ƶ��µ����е�����
	public Hotel findByHotel(Hotel hotel) throws Exception;
}
