-- Deploy: schemas/agentic_db_app_public/tables/sessions/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/updated_at/alterations/alt0000002122


ALTER TABLE "agentic_db_app_public".sessions 
  ADD COLUMN title text;

