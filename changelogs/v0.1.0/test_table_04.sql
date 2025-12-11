--liquibase formatted sql

--changeset Liquibase User:1
create table example_table_04 (  
	id int primary key,
	firstname varchar(50),
	lastname varchar(50) not null,
	state char(2)
);

--changeset Liquibase User:2
--preconditions onFail:CONTINUE 
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM example_table_04
alter table example_table_04 
    add col1 varchar(3)
;

--changeset Liquibase User:3
--preconditions onFail:CONTINUE 
--precondition-sql-check expectedResult:1 SELECT COUNT(*) FROM example_table_04
alter table example_table_04 
    add col2 varchar(3)
;

--changeset Liquibase User:4 dbms:oracle
alter table example_table_04 
    add col3 varchar(3)
;