-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/id/column


ALTER TABLE agentic_db_app_public.agent_logs 
  DROP COLUMN id RESTRICT;


