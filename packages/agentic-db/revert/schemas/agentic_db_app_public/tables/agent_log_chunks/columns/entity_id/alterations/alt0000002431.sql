-- Revert: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/entity_id/alterations/alt0000002431


ALTER TABLE agentic_db_app_public.agent_log_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


