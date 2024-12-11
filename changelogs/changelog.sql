--liquibase formatted sql

--changeset ASmith1:table01 context:PROD
create table table01 (
	id numeric not null,
	name varchar (255)
);

--changeset ASmith2:table02
create table table02 (
	id numeric not null,
	name varchar (255)
);

--changeset ASmith3:table03 context:INVALID_ENVIRONMENT
create table table03 (
	id numeric not null,
	name varchar (255)
);

--changeset ASmith4:table04 context:!PROD
create table table04 (
	id numeric not null,
	name varchar (255)
);