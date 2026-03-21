-- Deploy: schemas/agentic_db_app_public/tables/threads/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/updated_at/alterations/alt0000002156


ALTER TABLE "agentic_db_app_public".threads 
  ADD COLUMN title text;

