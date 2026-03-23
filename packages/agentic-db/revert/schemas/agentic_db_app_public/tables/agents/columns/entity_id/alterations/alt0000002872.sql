-- Revert: schemas/agentic_db_app_public/tables/agents/columns/entity_id/alterations/alt0000002872


ALTER TABLE agentic_db_app_public.agents 
  ALTER COLUMN entity_id DROP NOT NULL;


