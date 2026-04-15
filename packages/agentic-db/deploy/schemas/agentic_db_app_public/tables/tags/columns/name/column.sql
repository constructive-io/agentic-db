-- Deploy: schemas/agentic_db_app_public/tables/tags/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table


ALTER TABLE "agentic_db_app_public".tags 
  ADD COLUMN name text;

