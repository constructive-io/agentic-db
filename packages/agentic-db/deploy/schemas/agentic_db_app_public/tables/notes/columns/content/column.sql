-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/updated_at/alterations/alt0000001758


ALTER TABLE "agentic_db_app_public".notes 
  ADD COLUMN content text;

