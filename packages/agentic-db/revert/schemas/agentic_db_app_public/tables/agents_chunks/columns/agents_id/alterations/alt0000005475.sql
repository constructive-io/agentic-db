-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/agents_id/alterations/alt0000005475


ALTER TABLE agentic_db_app_public.agents_chunks 
  ALTER COLUMN agents_id DROP NOT NULL;


