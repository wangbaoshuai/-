package com.hotel.biz;

import java.util.List;

import com.hotel.entity.Hmenu;

public interface MenuBiz {
	// ��Ӳ�ϵ
	public int addMenu(Hmenu menu) throws Exception;

	// ɾ����ϵ
	public int deleteMenu(Integer mid) throws Exception;

	// �޸Ĳ�ϵ
	public int updateMenu(Hmenu menu) throws Exception;

	// ������ϵ
	public List<Hmenu> findMenus() throws Exception;

	// ����ҳ����ѯ�ͷ�
	public List<Hmenu> findHmenuByPage(Integer page) throws Exception;

	// ��������ҳ��ѯ
	public List<Hmenu> findMenuByPage(Integer page, Hmenu menu)
			throws Exception;

	// ����������ѯҳ��
	public int findMenuPages(Hmenu menu) throws Exception;

	// ���ҵ�����ϵ
	public Hmenu findMenuById(Integer mid) throws Exception;

	// ��ѯ��ҳ��
	public int findPages() throws Exception;
}
