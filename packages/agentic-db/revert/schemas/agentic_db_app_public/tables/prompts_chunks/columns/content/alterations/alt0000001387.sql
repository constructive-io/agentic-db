-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/content/alterations/alt0000001387


ALTER TABLE "agentic_db_app_public".prompts_chunks 
  ALTER COLUMN content DROP NOT NULL;


