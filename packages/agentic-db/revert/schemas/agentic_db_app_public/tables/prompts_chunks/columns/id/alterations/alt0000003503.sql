-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/id/alterations/alt0000003503


ALTER TABLE agentic_db_app_public.prompts_chunks 
  ALTER COLUMN id DROP NOT NULL;


