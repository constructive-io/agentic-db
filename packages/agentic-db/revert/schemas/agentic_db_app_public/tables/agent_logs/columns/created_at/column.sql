-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/created_at/column


ALTER TABLE agentic_db_app_public.agent_logs 
  DROP COLUMN created_at RESTRICT;


