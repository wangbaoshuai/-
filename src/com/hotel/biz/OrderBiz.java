package com.hotel.biz;

import java.util.List;

import com.hotel.entity.Horder;
import com.hotel.entity.Luser;

public interface OrderBiz {
	// ��Ӷ����ķ���
	public int add(Horder order) throws Exception;

	// ɾ�������ķ���
	public int delete(Integer id) throws Exception;

	// ���¶����ķ���
	public int update(Horder order) throws Exception;

	// ��ѯ���������ķ���
	public Horder findById(Integer id) throws Exception;

	// �������еĶ���
	public List<Horder> findByPage(Integer page) throws Exception;

	// ��ѯ��ҳ���ķ���
	public int findOrderPage() throws Exception;

	// ����Uid��ѯ���������ķ���
	public List<Horder> findByUId(Integer uid) throws Exception;

	// ����״̬��ѯ������Ϣ
	public Horder findOrder(String ostatus) throws Exception;

	// �����û�id��ҳ����ѯ����
	public List<Horder> findByUserAndPage(Luser user, Integer nowpage)
			throws Exception;

	public int findPageByUser(Luser user) throws Exception;

	// ��������ҳ��ѯ����
	public List<Horder> findByduo(Horder order, Integer nowpage)
			throws Exception;

	public int findPageByduo(Horder order) throws Exception;
}
