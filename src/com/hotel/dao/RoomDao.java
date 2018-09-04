package com.hotel.dao;

import java.util.List;

import com.hotel.entity.Hotel;
import com.hotel.entity.Room;
import com.hotel.entity.Rtype;

public interface RoomDao {
	// ��ӿͷ���Ϣ
	public int addRoom(Room room) throws Exception;

	// �޸ÿͷ���Ϣ
	public int updateRoom(Room room) throws Exception;

	// ɾ���ͷ���Ϣ
	public int deleteRoom(Integer rid) throws Exception;

	// �����ͷ���Ϣ
	public List<Room> findRooms() throws Exception;

	// ����ҳ����ѯ�ͷ�
	public int findPages() throws Exception;

	public List<Room> findRoomsByPage(Integer page) throws Exception;

	// ��������ҳ��ѯ
	public List<Room> findRoomByPage(Integer page, Room room) throws Exception;

	// ����������ѯҳ��
	public int findRoomPages(Room room) throws Exception;

	// ͨ��ID��ѯ���ݶ���
	public Room findRoomById(Integer id) throws Exception;

	// ���ݾƵ�Ϳͷ����Ͳ�ѯ�ͷ�
	public List<Room> findRoomByHotelAndRtype(Integer hid, Integer rid)
			throws Exception;

	// ���ݾƵ��ҳ����ѯ�ͷ���Ϣ
	public List<Room> findRoomByHotelAndPage(Hotel hotel, Integer nowpage)
			throws Exception;

	public int findPageByHotel(Hotel hotel) throws Exception;

	// ���ݾƵ꣬�ͷ����к�ҳ����ѯ�ͷ�
	public List<Room> findRoomDuo(Hotel hotel, String rstate, Integer nowpage)
			throws Exception;

	public int findPage(Hotel hotel, String rstate) throws Exception;

	// ��������ҳ��ѯ
	public List<Room> findByDuo(Room room, Integer nowpage) throws Exception;

	public int findpages(Room room) throws Exception;
}
