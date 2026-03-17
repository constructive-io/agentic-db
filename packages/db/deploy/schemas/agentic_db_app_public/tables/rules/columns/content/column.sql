-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/title/alterations/alt0000001051


ALTER TABLE "agentic_db_app_public".rules 
  ADD COLUMN content text;

