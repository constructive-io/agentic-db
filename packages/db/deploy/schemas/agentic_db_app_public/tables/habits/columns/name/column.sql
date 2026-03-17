-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/updated_at/alterations/alt0000001466


ALTER TABLE "agentic_db_app_public".habits 
  ADD COLUMN name text;

