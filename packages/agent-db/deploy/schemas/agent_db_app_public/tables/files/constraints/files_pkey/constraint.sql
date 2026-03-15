-- Deploy: schemas/agent_db_app_public/tables/files/constraints/files_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/embedding/column


ALTER TABLE agent_db_app_public.files 
  ADD CONSTRAINT files_pkey PRIMARY KEY (id);

