-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/prompt_id/alterations/alt0000002104


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  ALTER COLUMN prompt_id DROP NOT NULL;


