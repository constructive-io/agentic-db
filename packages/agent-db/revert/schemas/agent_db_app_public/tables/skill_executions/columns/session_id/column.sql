-- Revert: schemas/agent_db_app_public/tables/skill_executions/columns/session_id/column


ALTER TABLE agent_db_app_public.skill_executions 
  DROP COLUMN session_id RESTRICT;


