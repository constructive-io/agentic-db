-- Deploy: schemas/agentic_db_app_public/tables/chunks/columns/end_line/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chunks/table
-- requires: schemas/agentic_db_app_public/tables/chunks/columns/start_line/column


ALTER TABLE "agentic_db_app_public".chunks 
  ADD COLUMN end_line int;

