-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/columns/symbol_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/symbol_name/column


ALTER TABLE "agentic_db_app_public".code_chunks 
  ADD COLUMN symbol_type text;

