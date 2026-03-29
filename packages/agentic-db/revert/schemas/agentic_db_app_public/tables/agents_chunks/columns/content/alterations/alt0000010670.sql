-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/content/alterations/alt0000010670


ALTER TABLE agentic_db_app_public.agents_chunks 
  ALTER COLUMN content DROP NOT NULL;


