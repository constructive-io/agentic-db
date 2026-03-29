-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.prompts_chunks 
  DROP COLUMN updated_at RESTRICT;


