-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/updated_at/alterations/alt0000001384


ALTER TABLE "agentic_db_app_public".prompts_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


