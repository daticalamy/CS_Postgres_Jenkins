--liquibase formatted sql

--changeset amy.smith:films_01 labels:v0.1.0
create table films_01 (
  id int, 
  name varchar(30),
  kind varchar(30) 
);
--rollback DROP TABLE films_01;

--changeset amy.smith:films_01_idx labels:v0.1.0
CREATE UNIQUE INDEX name_idx ON films_01 (name);
--rollback drop index name_idx;

--changeset amy.smith:films_01_idx_alter labels:v0.1.0
ALTER INDEX name_idx RENAME TO name_idx_new;

--changeset amy.smith:films_01_idx_drop labels:v0.1.0
DROP INDEX name_idx_new;

--changeset amy.smith:films_01_add_constraint labels:v0.1.0
ALTER table films_01 ADD CONSTRAINT unique_kind_01 UNIQUE (kind);

--changeset amy.smith:films_01_drop_constraint labels:v0.1.0
ALTER table films_01 DROP CONSTRAINT unique_kind_01;
