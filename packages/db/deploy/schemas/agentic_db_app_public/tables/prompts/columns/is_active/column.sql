-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/is_active/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/version/alterations/alt0000001097


ALTER TABLE "agentic_db_app_public".prompts 
  ADD COLUMN is_active bool;

