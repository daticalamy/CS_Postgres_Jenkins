--liquibase formatted sql

--changeset amy.smith:films_prod_only labels:v0.1.0 context:PROD
create table films_prod_only (
  id int, 
  name varchar(30),
  kind varchar(30) 
);
--rollback DROP TABLE films_prod_only;


--changeset amy.smith:films_prod_only_idx labels:v0.1.0 context:PROD
CREATE UNIQUE INDEX name_prod_only_idx ON films_prod_only (name);
--rollback drop name_prod_only_idx;