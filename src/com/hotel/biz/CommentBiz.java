package com.hotel.biz;

import java.util.List;

import com.hotel.entity.Hcomment;
import com.hotel.entity.Hotel;
import com.hotel.entity.Luser;

public interface CommentBiz {
	// �������
	public int addComment(Hcomment comment) throws Exception;

	// ɾ������
	public int deleteComment(Integer cid) throws Exception;

	// �޸�����
	public int updateComment(Hcomment comment) throws Exception;

	// �������е�����
	public List<Hcomment> findComments() throws Exception;

	// ��ѯ��ҳ��
	public int findCommentPages() throws Exception;

	// ����ҳ����ѯ����
	public List<Hcomment> findCommentsByPage(Integer page) throws Exception;

	// ����Id��ѯ
	public Hcomment findHcommentById(Integer id) throws Exception;

	// ���ݾƵ��ҳ����ѯ����
	public int findPageByHotel(Hotel hotel) throws Exception;

	public List<Hcomment> findByPageAndHotel(Integer nowpage, Hotel hotel)
			throws Exception;

	// �����û���ҳ����ѯ����
	public int findPageByUser(Luser user) throws Exception;

	public List<Hcomment> findByPageAndUser(Integer nowpage, Luser user)
			throws Exception;
}
