-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.prompts_chunks 
  DROP COLUMN created_at RESTRICT;


