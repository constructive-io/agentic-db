-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/id/alterations/alt0000002080


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  ALTER COLUMN id DROP NOT NULL;


