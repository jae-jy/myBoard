# myBoard
spring page

<db>

create table myBoard (
    bno       number            not null,
    title     varchar2(30)      not null,
    content   varchar2(2000)    not null,
    writer    varchar2(30)      not null,
    regDate   date              default sysdate,
    viewCnt   number            default 0,
    primary key(bno)
);
create sequence myBoard_seq;

create table myMember(
    userId      varchar2(30)    not null,
    userPass    varchar2(100)   not null,
    userName    varchar2(30)    not null,
    regDate     date            default sysdate,
    primary key(userId),
    unique(userName)
);

create table myReply (
    bno       number            not null,
    rno       number            not null,
    content   varchar2(2000)    not null,
    writer    varchar2(30)      not null,
    regDate   date              default sysdate,
    primary key(bno, rno)
);

alter table myReply
    add constraint myReply_bno foreign key(bno)
    references myBoard(bno);

create sequence myReply_seq;

commit;
