-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/prompts_id/alterations/alt0000001378


ALTER TABLE "agentic_db_app_public".prompts_chunks 
  ALTER COLUMN prompts_id DROP NOT NULL;


