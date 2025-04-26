use accidentdb;
show tables;


# tbl_date
create table tbl_date(
    id int primary key, # auto 사용x
    datetime datetime not null,
    daynight varchar(10) not null,
    weekday varchar(10) not null
);

insert into tbl_date
select id, datetime, daynight, weekday
from car_accident;



# tbl_location
create table tbl_location(
  id int primary key,
  region1 varchar(10),
  region2 varchar(20),
  lat double, log double
);

create table tbl_location(
  polygon double
);

insert into tbl_location
select id, region1, region2, null, null
from car_accident;


# tbl_type
create table tbl_type(
    id int primary key,
    type_main varchar(50),
    type_sub varchar(50),
    law varchar(100)
);

insert into tbl_type
select id, type_main, type_sub, law
from car_accident;



# tbl_damage
create table tbl_damage(
    id int primary key,
    dead int default 0,
    hurt int default 0
);

insert into tbl_damage
select id, dead, hurt
from car_accident;






