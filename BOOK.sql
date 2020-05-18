create SEQUENCE seq_board
minvalue 0;

create table tbl_board(
bno number(10,0),
title varchar2(200) not null,
content varchar2(2000) not null,
writer varchar2(50) not null,
regdate date default sysdate,
updatedate date default sysdate);

alter table tbl_board add constraint pk_board
primary key (bno);

insert into tbl_board(bno, title, content, writer)
values (seq_board.nextval, '�׽�Ʈ ����', '�׽�Ʈ ����', 'user00');

SELECT
    *
FROM tbl_board;

DROP SEQUENCE seq_board;

DROP TABLE tbl_board;