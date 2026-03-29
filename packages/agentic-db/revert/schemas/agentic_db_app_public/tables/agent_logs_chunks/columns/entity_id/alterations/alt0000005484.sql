-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/entity_id/alterations/alt0000005484


ALTER TABLE agentic_db_app_public.agent_logs_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


