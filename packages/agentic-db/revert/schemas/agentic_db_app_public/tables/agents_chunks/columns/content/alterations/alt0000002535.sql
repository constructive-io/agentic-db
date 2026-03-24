-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/content/alterations/alt0000002535


ALTER TABLE agentic_db_app_public.agents_chunks 
  ALTER COLUMN content DROP NOT NULL;


