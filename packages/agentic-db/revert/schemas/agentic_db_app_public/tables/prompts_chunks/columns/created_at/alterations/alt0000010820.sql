-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/created_at/alterations/alt0000010820


ALTER TABLE agentic_db_app_public.prompts_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


