-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/message/column


ALTER TABLE agentic_db_app_public.agent_logs 
  DROP COLUMN message RESTRICT;


