-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/content/alterations/alt0000002088


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  ALTER COLUMN content DROP NOT NULL;


