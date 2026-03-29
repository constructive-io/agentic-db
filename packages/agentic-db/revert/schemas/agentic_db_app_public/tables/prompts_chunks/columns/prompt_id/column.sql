-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/prompt_id/column


ALTER TABLE agentic_db_app_public.prompts_chunks 
  DROP COLUMN prompt_id RESTRICT;


