-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/content/alterations/alt0000001346


ALTER TABLE "agentic_db_app_public".prompts 
  ALTER COLUMN content DROP NOT NULL;


