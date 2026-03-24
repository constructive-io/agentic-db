-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/entity_id/column


ALTER TABLE agentic_db_app_public.agent_logs 
  DROP COLUMN entity_id RESTRICT;


