-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/updated_at/alterations/alt0000002890


ALTER TABLE agentic_db_app_public.agents_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


