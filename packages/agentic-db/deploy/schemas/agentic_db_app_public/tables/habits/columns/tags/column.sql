-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/is_active/alterations/alt0000001686


ALTER TABLE "agentic_db_app_public".habits 
  ADD COLUMN tags citext[];

