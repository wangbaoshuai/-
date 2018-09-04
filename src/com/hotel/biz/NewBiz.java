package com.hotel.biz;

import java.util.List;

import com.hotel.entity.Hnew;

public interface NewBiz {
	// ������ŵķ���
	public int addNew(Hnew news) throws Exception;

	// ɾ�����ŵķ���
	public int deleteNew(Integer nid) throws Exception;

	// �޸����ŵķ���
	public int updateNew(Hnew news) throws Exception;

	// ��ѯ�����б�
	public List<Hnew> findNews() throws Exception;

	// ����������ѯҳ��
	public int findNewPages() throws Exception;

	// ����ҳ����ѯ���ŵķ���
	public List<Hnew> findNewsByPage(Integer page) throws Exception;

	// ��ѯ�������ŵķ���
	public Hnew findNewsByNid(Integer nid) throws Exception;
}
