-- Deploy: schemas/agentic_db_app_public/tables/chunks/columns/start_line/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chunks/table
-- requires: schemas/agentic_db_app_public/tables/chunks/columns/content/alterations/alt0000001327


ALTER TABLE "agentic_db_app_public".chunks 
  ADD COLUMN start_line int;

