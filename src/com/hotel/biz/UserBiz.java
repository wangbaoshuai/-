package com.hotel.biz;

import java.util.List;

import com.hotel.entity.Luser;

public interface UserBiz {
	// ����û�
	public int addUser(Luser user) throws Exception;

	// ��ѯ�û�
	public List<Luser> findUser() throws Exception;

	// �޸��û���Ϣ
	public int updateUser(Luser user) throws Exception;

	// ɾ���û���Ϣ
	public int deleteUserById(Integer uid) throws Exception;

	// ����Id��ѯ�����û�
	public Luser findLuserById(Integer uid) throws Exception;

	// ��֤��¼�û�
	public Luser findUserByUnameandUpass(String uname, String upass)
			throws Exception;

	// ��ѯ��ҳ��
	public int findUserPages() throws Exception;

	// ����ҳ����ѯ
	public List<Luser> findByPage(Integer nowpage) throws Exception;

	// ��������ҳ��ѯ
	public int findPagesByUser(Luser user) throws Exception;

	public List<Luser> findUserByPage(Integer page, Luser user)
			throws Exception;

	public Luser findUserByLoginname(String loginname) throws Exception;
}
