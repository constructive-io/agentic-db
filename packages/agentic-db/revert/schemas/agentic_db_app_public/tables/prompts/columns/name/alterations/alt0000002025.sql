-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/name/alterations/alt0000002025


ALTER TABLE "agentic_db_app_public".prompts 
  ALTER COLUMN name DROP NOT NULL;


