package com.hotel.biz;

import java.util.List;

import com.hotel.entity.Menutype;

public interface MenuTypeBiz {
	// ��Ӳ�ϵ
	public int addMenuType(Menutype mt) throws Exception;

	// ɾ����ϵ����
	public int deleteMenuType(Integer mtid) throws Exception;

	// �޸Ĳ�ϵ����
	public int updateMenuType(Menutype mt) throws Exception;

	// �������в�ϵ����
	public List<Menutype> findAll() throws Exception;
}
