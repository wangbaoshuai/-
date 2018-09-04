-----����Ԥ���Ƶ�ϵͳ---1302������˧--
-------<<���������ݿ��ִ��˳��>>------
----------1.����������-------
alter table room drop constraint FK_ROOM_REFERENCE_TYPE;
alter table room drop constraint FK_ROOM_REFERENCE_HOTEL;
alter table hmenu drop constraint FK_HMENU_REFERENCE_MENUTYPE;
alter table roomDetail drop constraint FK_ROOMDETAIL_REFERENCE_ROOM;
alter table hotel drop constraint FK_HOTEL_REFERENCE_HCITY;
alter table hmessage drop constraint FK_HMESSGAE_REFERENCE_LUSER;
alter table hcomment drop constraint FK_HCOMMENT_REFERENCE_LUSER;
alter table hcomment drop constraint FK_HCOMMENT_REFERENCE_HOTEL;
alter table horder drop constraint FK_HORDER_REFERENCE_ROOM;
alter table horder drop constraint FK_HORDER_REFERENCE_LUSER;
commit;
--------2.ɾ�������-----
drop table luser;
drop table room;
drop table roomDetail;
drop table rtype;
drop table hotel;
drop table hcity;
drop table hmenu;
drop table menutype;
drop table hmessage;
drop table hnew;
drop table hcomment;
drop table horder;
commit;
-------3.ɾ������------
drop sequence luser_seq;
drop sequence hcity_seq;
drop sequence hotel_seq;
drop sequence rtype_seq;
drop sequence roomDetail_seq;
drop sequence hmenu_seq;
drop sequence menutype_seq;
drop sequence hnew_seq;
drop sequence hcomment_seq;
drop sequence hmessage_seq;
drop sequence horder_seq;
commit;

-----------4.������----------------

---------(1)�û���=========
create table luser(
u_id number(6),----�û�Id
u_loginname varchar2(20),--�û���
u_loginpass varchar2(20),--����
u_sex char(10),--�Ա�
u_telephone varchar2(16),---�绰
u_address varchar2(100),--��ַ
u_type varchar2(100),--shenfen
u_idcard varchar2(50),---���֤��
u_email varchar2(50),---Email��ַ
u_image varchar2(500),--ͷ��
u_status varchar2(10),--��ʾ�û���״̬��0 ����   1 ���ᣩ
u_isadmin number(6),---�Ƿ��ǹ���Ա
u_score number(6),---�û�����
constraint PK_LUSER primary key (u_id)
);
-------(2)�Ƶ���б�========
create table hcity(
 city_id number(6),--����ID
 city_name varchar(100),---��������
 constraint PK_HCITY primary key (city_id)
);
--------(3)�Ƶ��=========
create table hotel(
h_id number(6),--�Ƶ�ID
h_name varchar2(100),--�Ƶ�����
h_zip number(6),--�Ƶ����
h_content varchar2(1000),--�Ƶ����
h_telephone varchar2(16),--�Ƶ�绰
h_address varchar2(100),--�Ƶ��ַ
h_image varchar2(500),--�Ƶ�ͼƬ
h_city number(6),
constraint PK_HOTEL primary key (h_id)
);

---------(4)�ͷ���===========
create table room(
  r_id number(6),---�����
  r_title varchar2(200),---����
  r_floor varchar2(10),--¥��
  r_bednumber number(6),---��λ��
  r_img varchar2(100),---����ͼƬ
  r_state varchar2(20),---��ʾ״̬������ ,��ס��
  rd_total number(6), --Ԥ��Ѻ��
  r_type number(6), ---��������
  r_hotel number(6),---jiudian
  constraint PK_ROOM primary key (r_id)
);

---------(5)�ͷ����ͱ�=======
create table rtype(
rt_id number(6),--����ID
tr_name varchar2(100),--������
 constraint PK_RTYPE primary key (rt_id)
);

---------(6)�ͷ���ϸ��=========
create table roomDetail(
 rd_id number(6),--��ϸID
 room_id number(6),
 rd_title varchar2(200),---����
 rd_content varchar2(200),---����
 rd_telephone varchar2(30),---����绰
 rd_price number(8,2),--ʵ�ʼ۸�
 rd_discount number(8,2),---�ۿۼ۸�
 rd_perhourprice number(8,2),---��ʱÿСʱ��
 constraint PK_ROOMDEATIL primary key (rd_id)
);

---------(7)�˵���============
create table hmenu(
 m_id number(6),--�˵�ID
 m_title varchar2(50),--��ϵ����
 m_price number(6),--��ϵ�۸�
 m_img varchar2(100),--��ϵͼƬ
 m_type number(6), ---����
 constraint PK_HMENU primary key (m_id)
);
----------(8)�˵�����=======
create  table menutype
(
 mt_id number(6),--����ID
 mt_name varchar2(50),--��������
   constraint PK_MENUTYPE primary key (mt_id)
);

---------(9)���ű�========
create table hnew(
n_id number(6),--����ID
n_title varchar2(100),--��������
n_image varchar2(100),--tupian
n_content varchar2(250),--��������
constraint PK_HNEW primary key (n_id)
);
----------(10)���Ա�=========
create table hmessage
(
m_id number(6),--����ID
m_title varchar2(100),--��������
m_content varchar2(200), --��������
u_id number(6),  
m_date date,--��������
m_reply varchar2(200),--��ʾ�ظ�
  constraint PK_HMESSAGE primary key (m_id)
);

---------(11)���۱�========
create table hcomment
(
c_id number(6),--����ID
c_content varchar2(200), --��������
u_id number(6), 
h_id number(6), 
c_score number(6) , --����
c_date date,--����
 constraint PK_HCOMMENT primary key (c_id)
);

---------(12)������========
create table horder
(
   o_id number(6),--����ID
   u_id number(6),
   r_id number(6),
   o_date date,--��ס����
   b_date date,--Ԥ��ʱ��
   y_date date,--�˷�����
   o_name varchar2(20),--����
   o_telphone varchar2(16),--�绰
   o_status varchar2(10),--��ʾ״̬��0�����   1 ͨ����   
   constraint PK_HORDER primary key (o_id)
); 
-------------5.��������---------------
create sequence luser_seq start with 0 increment by 1 minvalue 0;
create sequence hcomment_seq start with 0 increment by 1 minvalue 0;
create sequence hmenu_seq start with 0 increment by 1 minvalue 0;
create sequence roomDetail_seq start with 0 increment by 1 minvalue 0;
create sequence rtype_seq start with 0 increment by 1 minvalue 0;
create sequence menutype_seq start with 0 increment by 1 minvalue 0;
create sequence hotel_seq start with 0 increment by 1 minvalue 0;
create sequence hcity_seq start with 0 increment by 1 minvalue 0;
create sequence hmessage_seq start with 0 increment by 1 minvalue 0;
create sequence hnew_seq start with 0 increment by 1 minvalue 0;
create sequence horder_seq  start with 0 increment by 1 minvalue 0;
commit;

------------6.�����������-------
alter table room add constraint FK_ROOM_REFERENCE_TYPE foreign key (r_type) references rtype(rt_id);
alter table room add constraint FK_ROOM_REFERENCE_HOTEL foreign key (r_hotel) references hotel(h_id);
alter table hmenu add constraint FK_HMENU_REFERENCE_MENUTYPE foreign key (m_type) references menutype(mt_id);
alter table roomDetail add constraint FK_ROOMDETAIL_REFERENCE_ROOM foreign key (room_id) references room(r_id);
alter table hotel add constraint FK_HOTEL_REFERENCE_HCITY foreign key (h_city) references hcity(city_id);
alter table hmessage add constraint FK_HMESSGAE_REFERENCE_LUSER foreign key (u_id) references luser(u_id);
alter table hcomment add constraint FK_HCOMMENT_REFERENCE_LUSER foreign key (u_id) references luser(u_id);
alter table hcomment add constraint FK_HCOMMENT_REFERENCE_HOTEL foreign key (h_id) references hotel(h_id);
alter table horder add constraint FK_HORDER_REFERENCE_ROOM foreign key (r_id) references room(r_id);
alter table horder add constraint FK_HORDER_REFERENCE_LUSER foreign key (u_id) references luser(u_id);
commit;
------------7.��������----------------
------(1)�����û�����------
insert into luser values(luser_seq.nextval,'admin','123456','��','18898748995','�����к�����','����','1421163632562365','23444@qq.com','u1.gif','����',1,100);
insert into luser values(luser_seq.nextval,'zhangsan','123456','Ů','18898748665','�����г�����','����','1421163632562365','23564@qq.com','u2.gif','����',0,100);
insert into luser values(luser_seq.nextval,'lisi','123456','��','18898748225','�����з�̨��','����','1421163632562365','23423@qq.com','u3.gif','����',0,100);
insert into luser values(luser_seq.nextval,'wangwu','123456','Ů','18898748335','�����в�ƽ��','����','1421163632562365','23898@qq.com','u4.gif','����',0,100);
insert into luser values(luser_seq.nextval,'zhaoliu','123456','��','18898748425','̫ԭ��С����','����','142116364682465','46898@qq.com','u5.gif','����',0,100);
insert into luser values(luser_seq.nextval,'guosan','123456','��','18898748665','����в�ƽ��','ѧ��','14211636988564465','28998@qq.com','u6.gif','����',0,100);
commit;
select * from luser;
------(2)�����������-----
insert into hcity values(hcity_seq.nextval,'����');
insert into hcity values(hcity_seq.nextval,'�Ϻ�');
insert into hcity values(hcity_seq.nextval,'����');
insert into hcity values(hcity_seq.nextval,'���');
insert into hcity values(hcity_seq.nextval,'����');
insert into hcity values(hcity_seq.nextval,'̫ԭ');
insert into hcity values(hcity_seq.nextval,'֣��');
insert into hcity values(hcity_seq.nextval,'����');
insert into hcity values(hcity_seq.nextval,'�ɶ�');
insert into hcity values(hcity_seq.nextval,'����');
insert into hcity values(hcity_seq.nextval,'����');
commit;
select * from hcity;
------(3)����Ƶ�����----
insert into hotel values (hotel_seq.nextval,'����������',032300,'ȫ������8�Ǽ���Ƶ�','0000-7888888','�����к���������·88��','h1.jpg',1 );
insert into hotel values (hotel_seq.nextval,'�Ϻ�������',043000,'�Ϻ�����8�Ǽ���Ƶ�','0100-7888888','�Ϻ����ֶ�������·99��','h10.jpg',2 );
insert into hotel values (hotel_seq.nextval,'����������',060210,'�㶫����8�Ǽ���Ƶ�','0200-7888888','�����п������½ֿ�88��','h2.jpg',3 );
insert into hotel values (hotel_seq.nextval,'���������',012402,'�������8�Ǽ���Ƶ�','0400-7888888','����к���������·88��','h3.jpg',4 );
insert into hotel values (hotel_seq.nextval,'����������',032101,'��������8�Ǽ���Ƶ�','0500-7888888','�����к���������·88��','h4.jpg',5 );
insert into hotel values (hotel_seq.nextval,'֣��������',045165,'��������8�Ǽ���Ƶ�','0700-7888888','֣���к���������·88��','h5.jpg',7 );
insert into hotel values (hotel_seq.nextval,'̫ԭ������',023544,'ɽ������7�Ǽ���Ƶ�','0400-7888888','̫ԭ�к���������·88��','h6.jpg',6 );
insert into hotel values (hotel_seq.nextval,'����������',021352,'��������8�Ǽ���Ƶ�','0300-7888888','�����к���������·88��','h7.jpg',8);
insert into hotel values (hotel_seq.nextval,'�ɶ�������',098122,'�Ĵ�����6�Ǽ���Ƶ�','0500-7888888','�ɶ��к���������·88��','h8.jpg',9 );
insert into hotel values (hotel_seq.nextval,'����������',036541,'��������8�Ǽ���Ƶ�','0300-7888888','�����к���������·88��','h9.jpg',10 );
insert into hotel values (hotel_seq.nextval,'����������',032425,'�㽭����8�Ǽ���Ƶ�','0300-7888888','�����к���������·88��','h10.jpg',11);
commit;
------(4)����ͷ���������----
insert into rtype  values(rtype_seq.nextval,'��ͳ�׷�');
insert into rtype  values(rtype_seq.nextval,'�����׷�');
insert into rtype  values(rtype_seq.nextval,'�����׷�');
insert into rtype  values(rtype_seq.nextval,'VIP�׷�');
insert into rtype  values(rtype_seq.nextval,'�߼��׷�');
insert into rtype  values(rtype_seq.nextval,'�����׷�');
insert into rtype  values(rtype_seq.nextval,'��׼�׷�');
insert into rtype values(rtype_seq.nextval,'�����׷�');
insert into rtype values(rtype_seq.nextval,'˫���׷�');
insert into rtype  values(rtype_seq.nextval,'�����׷�');
insert into rtype  values(rtype_seq.nextval,'�����׷�');
commit;
------(5)����ͷ�����------
insert into room values (1001,'���������','1Floor',2,'ra.jpg','����',100,5,1);
insert into room values (2001,'��ŵ�ļ�','2Floor',2,'rb.jpg','����',50,7,1);
insert into room values (3001,'�������Ͼ�','3Floor',2,'rc.jpg','����',50,7,1);
insert into room values (4001,'���ʵ�����','4Floor',2,'rd.jpg','����',100,8,1);
insert into room values (5001,'�ۺ϶ȼ��ԾƵ�','5Floor',2,'rf.jpg','����',100,7,3);
insert into room values (6001,'���֮��','6Floor',2,'rg.jpg','����',100,6,1);
insert into room values (1100,'ׯ԰�Ǳ�','1Floor',2,'rh.jpg','����',100,6,4);
insert into room values (2003,'����ʽ�ȼ�','2Floor',2,'rj.jpg','����',100,7,4);
insert into room values (3000,'ԭ��̬','3Floor',2,'rl.jpg','����',100,4,6);
insert into room values (1011,'�ڿ͵۹�','1Floor',1,'rq.jpg','��ס',100,4,3);
insert into room values (3010,'ͯ������','3Floor',2,'rw.jpg','����',100,3,2);
insert into room values (4000,'����','4Floor',2,'re.jpg','����',200,1,1);
insert into room values (5000,'������','5Floor',2,'rr.jpg','��ס',200,1,1);
insert into room values (5010,'��������','5Floor',2,'rt.jpg','����',200,2,1);
insert into room values (5002,'������','5Floor',2,'ry.jpg','��ס',100,5,2);
insert into room values (4008,'�Թ�','4Floor',2,'ru.jpg','����',100,5,3);
insert into room values (3002,'����','3Floor',2,'ri.jpg','��ס',100,9,4);
insert into room values (1008,'����ʽ','1Floor',2,'ro.jpg','����',100,4,2);
insert into room values (1009,'��������','1Floor',1,'rp.jpg','��ס',100,10,6);
insert into room values (7001,'��������','7Floor',1,'rm.jpg','����',100,11,6);
insert into room values (8000,'��������','8Floor',1,'rn.jpg','��ס',120,3,6);
commit;
select * from room;
------(6)����ͷ���������-----
insert into roomDetail values (roomDetail_seq.nextval,1001,'���������','�߽�����ͺñȽ��뺣�����磬�延���','78032514',108,99,33);
insert into roomDetail values (roomDetail_seq.nextval,2001,'��ŵ�ļ�','�߽�����ͺñȽ��뺣�����磬�延���','78032556',208,169,63);
insert into roomDetail values (roomDetail_seq.nextval,3001,'�������Ͼ�','�߽�����ͺñȽ��뺣�����磬�延���','78032555',138,109,43);
insert into roomDetail values (roomDetail_seq.nextval,4001,'���ʵ�����','�߽�����ͺñȽ��뺣�����磬�延���','78032544',108,99,33);
commit;
------(7)�����ϵ��������----
insert into menutype values(menutype_seq.nextval,'����');
insert into menutype values(menutype_seq.nextval,'³��');
insert into menutype values(menutype_seq.nextval,'����');
insert into menutype values(menutype_seq.nextval,'�ղ�');
insert into menutype values(menutype_seq.nextval,'���');
insert into menutype values(menutype_seq.nextval,'�ղ˲�');
insert into menutype values(menutype_seq.nextval,'���');
insert into menutype values(menutype_seq.nextval,'����');
insert into menutype values(menutype_seq.nextval,'ɽ����');
insert into menutype values(menutype_seq.nextval,'������');
commit;
------(8)�����ϵ����-------
insert into hmenu values (hmenu_seq.nextval,'һƷ����',988,'1.jpg',1);
insert into hmenu values (hmenu_seq.nextval,'�������',688,'2.jpg',1);
insert into hmenu values (hmenu_seq.nextval,'���Ŷ���',88,'3.jpg',1);
insert into hmenu values (hmenu_seq.nextval,'�ع���',38,'4.jpg',1);
insert into hmenu values (hmenu_seq.nextval,'�Ǵ׻ƺ�����',128,'5.jpg',2);
insert into hmenu values (hmenu_seq.nextval,'��ת��',88,'6.jpg',2);
insert into hmenu values (hmenu_seq.nextval,'��������',266,'7.jpg',2);
insert into hmenu values (hmenu_seq.nextval,'���ݰǼ�',108,'8.jpg',2);
insert into hmenu values (hmenu_seq.nextval,'���պ���',68,'9.jpg',2);
insert into hmenu values (hmenu_seq.nextval,'����������',98,'10.jpg',3);
insert into hmenu values (hmenu_seq.nextval,'������',498,'11.jpg',3);
insert into hmenu values (hmenu_seq.nextval,'�Οh��',158,'12.jpg',3);
insert into hmenu values (hmenu_seq.nextval,'���߸�',428,'13.jpg',3);
insert into hmenu values (hmenu_seq.nextval,'������',118,'1.jpg',3);
insert into hmenu values (hmenu_seq.nextval,'�ɼ��Ϻ',168,'2.jpg',3);
insert into hmenu values (hmenu_seq.nextval,'�������˿',58,'3.jpg',4);
insert into hmenu values (hmenu_seq.nextval,'ʨ��ͷ',208,'4.jpg',4);
insert into hmenu values (hmenu_seq.nextval,'ˮ������',88,'5.jpg',4);
insert into hmenu values (hmenu_seq.nextval,'Ѽ����',78,'6.jpg',4);
insert into hmenu values (hmenu_seq.nextval,'������',68,'7.jpg',5);
insert into hmenu values (hmenu_seq.nextval,'��������',28,'8.jpg',5);
insert into hmenu values (hmenu_seq.nextval,'��֭�Ӽ���',58,'9.jpg',5);
insert into hmenu values (hmenu_seq.nextval,'��«Ѽ��',78,'5.jpg',6);
insert into hmenu values (hmenu_seq.nextval,'���뼯�ռ�',99,'2.jpg',6);
insert into hmenu values (hmenu_seq.nextval,'����',655,'6.jpg',6);
insert into hmenu values (hmenu_seq.nextval,'��������',368,'l.jpg',7);
insert into hmenu values (hmenu_seq.nextval,'����Ϻ��',148,'8.jpg',7);
insert into hmenu values (hmenu_seq.nextval,'�л���',18,'5.jpg',7);
insert into hmenu values (hmenu_seq.nextval,'��ը����',88,'9.jpg',7);
insert into hmenu values (hmenu_seq.nextval,'������',60,'2.jpg',7);
insert into hmenu values (hmenu_seq.nextval,'̫����Ϻ',38,'3.jpg',8);
insert into hmenu values (hmenu_seq.nextval,'ѩ����',118,'1.jpg',8);
insert into hmenu values (hmenu_seq.nextval,'����ǽ',888,'2.jpg',8);
insert into hmenu values (hmenu_seq.nextval,'��֦��',788,'3.jpg',8);
insert into hmenu values (hmenu_seq.nextval,'��Ƭ�㼦',88,'5.jpg',8);
insert into hmenu values (hmenu_seq.nextval,'��ͬ������',8,'6.jpg',9);
insert into hmenu values (hmenu_seq.nextval,'�޼�',28,'9.jpg',9);
insert into hmenu values (hmenu_seq.nextval,'������',18,'10.jpg',9);
insert into hmenu values (hmenu_seq.nextval,'������',68,'12.jpg',9);
insert into hmenu values (hmenu_seq.nextval,'�����',338,'13.jpg',10);
commit;
------(9)����������Ϣ-------
insert into hnew values(hnew_seq.nextval,'�����Ƶ���ɫ��ϵ','n1.jpg','������Ƶ��Ƴ�ȫ�µ���ɫ��ϵ,��ӭ��λ����ǰ��Ʒ����');
insert into hnew values(hnew_seq.nextval,'�����Ƶ��ؼ��Ż�','n2.jpg','������Ƶ�����ƹ�,����׼�׷�8���Ż�,��');
insert into hnew values(hnew_seq.nextval,'�����Ƶ������׷�','n3.jpg','���ϻʹ�������������������Ƶ�����ס������,�Եķ���,˯�ð��ģ�');
insert into hnew values(hnew_seq.nextval,'�����Ƶ���ɫ��ϵ','n4.jpg','������Ƶ��Ƴ�ȫ�µ���ɫ��ϵ,��ӭ��λ����ǰ��Ʒ����');
insert into hnew values(hnew_seq.nextval,'�����Ƶ��ؼ��Ż�','n5.jpg','������Ƶ�����ƹ�,����׼�׷�8���Ż�,��');
insert into hnew values(hnew_seq.nextval,'�����Ƶ������׷�','n6.jpg','���ϻʹ�������������������Ƶ�����ס������,�Եķ���,˯�ð��ģ�');
insert into hnew values(hnew_seq.nextval,'�����Ƶ���ɫ��ϵ','n7.jpg','������Ƶ��Ƴ�ȫ�µ���ɫ��ϵ,��ӭ��λ����ǰ��Ʒ����');
insert into hnew values(hnew_seq.nextval,'�����Ƶ��ؼ��Ż�','n8.jpg','������Ƶ�����ƹ�,����׼�׷�8���Ż�,��');
insert into hnew values(hnew_seq.nextval,'�����Ƶ������׷�','n9.jpg','���ϻʹ�������������������Ƶ�����ס������,�Եķ���,˯�ð��ģ�');
insert into hnew values(hnew_seq.nextval,'�����Ƶ���ɫ��ϵ','n10.jpg','������Ƶ��Ƴ�ȫ�µ���ɫ��ϵ,��ӭ��λ����ǰ��Ʒ����');
insert into hnew values(hnew_seq.nextval,'�����Ƶ��ؼ��Ż�','n2.jpg','������Ƶ�����ƹ�,����׼�׷�8���Ż�,��');
insert into hnew values(hnew_seq.nextval,'�����Ƶ������׷�','n4.jpg','���ϻʹ�������������������Ƶ�����ס������,�Եķ���,˯�ð��ģ�');
insert into hnew values(hnew_seq.nextval,'�����Ƶ���ɫ��ϵ','n5.jpg','������Ƶ��Ƴ�ȫ�µ���ɫ��ϵ,��ӭ��λ����ǰ��Ʒ����');
insert into hnew values(hnew_seq.nextval,'�����Ƶ��ؼ��Ż�','n9.jpg','������Ƶ�����ƹ�,����׼�׷�8���Ż�,��');
insert into hnew values(hnew_seq.nextval,'�����Ƶ������׷�','n11.jpg','���ϻʹ�������������������Ƶ�����ס������,�Եķ���,˯�ð��ģ�');
commit;

--------(10)������������------
insert into hcomment values(hcomment_seq.nextval,'�����̬�������̫���ˣ�',2,1,9,to_date('2016-11-25','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�൱�ĸߴ��ϵľƵ꣬����̬���൱���ܵ�',2,1,9,to_date('2016-12-25','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'����������鴫�����Ǽ��ľƵ����һ��',3,1,7,to_date('2016-12-25','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'ס��������Եķ��ģ�����Ǵ�Ƶ�Ķ���֮����',4,1,9,to_date('2016-10-25','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'ס��������Եķ��ģ�����Ǵ�Ƶ�Ķ���֮����',2,1,9,to_date('2016-10-25','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�����ǺþƵ꣬������ʩӦ�о��У���ϲ��',2,1,9,to_date('2016-10-25','yyyy-mm-dd'));

insert into hcomment values(hcomment_seq.nextval,'ס��������Եķ��ģ�����Ǵ�Ƶ�Ķ���֮����',2,2,8,to_date('2016-12-20','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'����������鴫�����Ǽ��ľƵ����һ��',2,2,9,to_date('2016-11-25','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�����̬�������̫���ˣ�',3,2,10,to_date('2016-12-25','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�����ǺþƵ꣬������ʩӦ�о��У���ϲ��',3,2,9,to_date('2016-11-25','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�����ǺþƵ꣬������ʩӦ�о��У���ϲ��',4,2,8,to_date('2016-10-25','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�����ǺþƵ꣬������ʩӦ�о��У���ϲ��',4,2,9,to_date('2016-09-25','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'ס��������Եķ��ģ�����Ǵ�Ƶ�Ķ���֮����',2,3,6,to_date('2016-07-25','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'����������鴫�����Ǽ��ľƵ����һ��',2,3,8,to_date('2016-11-15','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�����̬�������̫���ˣ�',3,3,9,to_date('2016-11-05','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�൱�ĸߴ��ϵľƵ꣬����̬���൱���ܵ�',3,3,9,to_date('2016-11-15','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�����ǺþƵ꣬������ʩӦ�о��У���ϲ��',3,3,8,to_date('2016-11-20','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�����ǺþƵ꣬������ʩӦ�о��У���ϲ��',2,3,6,to_date('2016-11-10','yyyy-mm-dd'));

insert into hcomment values(hcomment_seq.nextval,'ס��������Եķ��ģ�����Ǵ�Ƶ�Ķ���֮����',4,4,8,to_date('2016-11-20','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'����������鴫�����Ǽ��ľƵ����һ��',5,4,6,to_date('2016-11-10','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�����̬�������̫���ˣ�',3,4,8,to_date('2016-11-20','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�൱�ĸߴ��ϵľƵ꣬����̬���൱���ܵ�',3,4,6,to_date('2016-11-10','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�����ǺþƵ꣬������ʩӦ�о��У���ϲ��',2,4,8,to_date('2016-11-20','yyyy-mm-dd'));
insert into hcomment values(hcomment_seq.nextval,'�����ǺþƵ꣬������ʩӦ�о��У���ϲ��',4,4,6,to_date('2016-11-10','yyyy-mm-dd'));
commit;

--------8.��ѯ���---------
select * from luser 
select * from room;
select * from roomDetail;
select * from rtype;
select * from hotel;
select * from hcity;
select * from hmessage;
select * from hnew ;
select * from hcomment;
select * from horder;
select * from hmenu;
select * from menutype;
commit;
--------------------------
