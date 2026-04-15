-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table


ALTER TABLE agentic_db_storage_public.files 
  ADD COLUMN tags text[];

