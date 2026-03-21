-- Deploy: schemas/agentic_db_app_public/tables/files/columns/hash/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/files/columns/language/column


ALTER TABLE agentic_db_app_public.files 
  ADD COLUMN hash text;

