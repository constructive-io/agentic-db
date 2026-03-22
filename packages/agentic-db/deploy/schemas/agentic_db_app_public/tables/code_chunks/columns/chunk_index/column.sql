-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/columns/chunk_index/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/file_path/alterations/alt0000006176


ALTER TABLE agentic_db_app_public.code_chunks 
  ADD COLUMN chunk_index int;

