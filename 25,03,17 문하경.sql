//테이블 생성
CREATE TABLE tcity(//테이블 이름

    name char(10) primary key,//문자열 10글자
    area int null,//int정수 null허용
    popu int null,
    metro char(1) not null,//null허용안함
    region char(6) not null
    );
    
    //데이터 삽입
    //레코드를 추가할 때 insert명령을 사용하며 values절에 레코드의 각 필드값을 콤마로 구분하여 나열한다
    insert into tcity values('서울',605,974,'y','경기');
    insert into tcity values('부산',765,342,'','경상');
    insert into tcity values('오산',42,21,'n','경기');
    insert into tcity values('청주',940,83,'n','충정');
    insert into tcity values('전주',205,65,'n','전라');
    insert into tcity values('순천',910,27,'n','전라');
    insert into tcity values('춘천',1116,27,'n','강원');
    insert into tcity values('홍천',1819,7,'n','강원'); 
    
    select*from tcity;//잘 사입되어있는 확인
    
    commit;
    //디벨롭퍼에서는 commit를 써주기
    
    