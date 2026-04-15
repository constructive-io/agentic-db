-- Deploy: schemas/agentic_db_storage_public/tables/files/constraints/files_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table


ALTER TABLE agentic_db_storage_public.files 
  ADD CONSTRAINT files_pkey PRIMARY KEY (id);

