create database s;
use s ;
create table foods (
ITEM_ID int primary key ,
ITEM_NAME varchar (30),
ITEM_UNIT varchar (10),
COMPID int,
foreign key(COMPID) REFERENCES company (COMPANY_ID) ON DELETE CASCADE 
);
create table company (
COMPANY_ID int primary key , 
COMPANY_NAME varchar (30),
COMPANY_CITY varchar (20)
);
insert into company values (18,'Order All','Boston');
insert into company values (15,'Jack Hill Ltd','London');
insert into company values (16,'Akas Foods','Delhi');
insert into company values (17,'Foodies.','London');
insert into company values (19,'sip-n-Bite.','New York');
select * from company ; 
select * from foods ; 
insert into foods values (1,'Chex Mix','Pcs', 16 );
insert into foods values (6,'Cheez-It','Pcs', 15 );
insert into foods values (2,'BN Biscuit','Pcs', 15 );
insert into foods values (3,'Mighty Munch','Pcs', 17 );
insert into foods values (4,'Pot Rice','Pcs', 15 );
insert into foods values (5,'Jaffa Cakes','Pcs', 18 );
insert into foods values (7,'Salt n Shake','Pcs');

SELECT company.company_name,company.company_id,
foods.COMPID,foods.item_name,foods.item_unit 
FROM company, foods 
WHERE company.company_id = foods.COMPID ;

SELECT company.company_id,company.company_name,
company.company_city,foods.COMPID,foods.item_name
FROM   company
LEFT JOIN foods
ON company.company_id = foods.COMPID;


