-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/id/alterations/alt0000003357


ALTER TABLE agentic_db_app_public.agents_chunks 
  ALTER COLUMN id DROP NOT NULL;


