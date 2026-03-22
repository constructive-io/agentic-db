-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/columns/end_line/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/start_line/column


ALTER TABLE "agentic_db_app_public".code_chunks 
  ADD COLUMN end_line int;

