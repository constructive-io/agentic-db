-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/columns/start_line/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/language/column


ALTER TABLE "agentic_db_app_public".code_chunks 
  ADD COLUMN start_line int;

