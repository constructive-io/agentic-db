-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/content/alterations/alt0000002026
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/name/alterations/alt0000002025


ALTER TABLE "agentic_db_app_public".prompts 
  ALTER COLUMN content SET NOT NULL;

