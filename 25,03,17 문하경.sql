//���̺� ����
CREATE TABLE tcity(//���̺� �̸�

    name char(10) primary key,//���ڿ� 10����
    area int null,//int���� null���
    popu int null,
    metro char(1) not null,//null������
    region char(6) not null
    );
    
    //������ ����
    //���ڵ带 �߰��� �� insert����� ����ϸ� values���� ���ڵ��� �� �ʵ尪�� �޸��� �����Ͽ� �����Ѵ�
    insert into tcity values('����',605,974,'y','���');
    insert into tcity values('�λ�',765,342,'','���');
    insert into tcity values('����',42,21,'n','���');
    insert into tcity values('û��',940,83,'n','����');
    insert into tcity values('����',205,65,'n','����');
    insert into tcity values('��õ',910,27,'n','����');
    insert into tcity values('��õ',1116,27,'n','����');
    insert into tcity values('ȫõ',1819,7,'n','����'); 
    
    select*from tcity;//�� ���ԵǾ��ִ� Ȯ��
    
    commit;
    //�𺧷��ۿ����� commit�� ���ֱ�
    
    