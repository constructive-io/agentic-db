-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/entity_id/alterations/alt0000005474


ALTER TABLE agentic_db_app_public.agents_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


