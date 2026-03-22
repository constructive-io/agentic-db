-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/columns/file_path/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/codebase_id/alterations/alt0000001565


ALTER TABLE "agentic_db_app_public".code_chunks 
  ADD COLUMN file_path text;

