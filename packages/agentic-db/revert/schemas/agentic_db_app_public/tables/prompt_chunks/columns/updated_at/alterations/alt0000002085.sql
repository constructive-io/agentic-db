-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/updated_at/alterations/alt0000002085


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


