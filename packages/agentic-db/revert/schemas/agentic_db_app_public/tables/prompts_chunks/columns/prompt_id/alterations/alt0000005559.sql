-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/prompt_id/alterations/alt0000005559


ALTER TABLE agentic_db_app_public.prompts_chunks 
  ALTER COLUMN prompt_id DROP NOT NULL;


