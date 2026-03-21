-- Deploy: schemas/agentic_db_app_public/tables/threads/columns/summary/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/title/alterations/alt0000002157


ALTER TABLE "agentic_db_app_public".threads 
  ADD COLUMN summary text;

