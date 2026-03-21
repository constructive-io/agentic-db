-- Deploy: schemas/agentic_db_app_public/tables/files/constraints/files_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/embedding/column


ALTER TABLE agentic_db_app_public.files 
  ADD CONSTRAINT files_pkey PRIMARY KEY (id);

