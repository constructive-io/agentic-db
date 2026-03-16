-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/name/alterations/alt0000001095


ALTER TABLE "agentic_db_app_public".prompts 
  ADD COLUMN content text;

