--liquibase formatted sql

--changeset amy.smith:films_not_dev labels:v0.1.0 context:!DEV
create table films_not_dev (
  id int, 
  name varchar(30),
  kind varchar(30) 
);
--rollback DROP TABLE films_not_dev;


--changeset amy.smith:films_not_dev_idx labels:v0.1.0 context:!DEV
CREATE UNIQUE INDEX name_not_dev_idx ON films_not_dev (name);
--rollback drop index name_not_dev_idx;