package com.hotel.biz;

import java.util.List;

import com.hotel.entity.Hmessage;
import com.hotel.entity.Luser;

public interface MessageBiz {
	// �ظ��ķ���
	public int update(Hmessage message) throws Exception;

	// ɾ���ķ���
	public int deleteMessageByMid(Integer mid) throws Exception;

	// ��ѯ�ķ���
	public List<Hmessage> findMessages() throws Exception;

	// ��ѯ�������Եķ���
	public Hmessage findMessageByMid(Integer mid) throws Exception;

	// �������
	public int addMessage(Hmessage message) throws Exception;

	// ��ѯ��ҳ��
	public int findMessagePages() throws Exception;

	// ��ҳ����������
	public List<Hmessage> findMessageByPage(Integer page) throws Exception;

	// ��ҳ����������ѯ����
	public List<Hmessage> findMessageByPage(Integer page, Hmessage message)
			throws Exception;

	// ��������ѯ��ҳ��
	public int findMessagePages(Hmessage message) throws Exception;

	// �����û���ҳ����ѯ����
	public int findPageByUser(Luser user) throws Exception;

	public List<Hmessage> findMessageByUserAndPage(Integer nowpage, Luser user)
			throws Exception;
}
