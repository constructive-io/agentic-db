-- Revert: schemas/agent_db_app_public/tables/skill_executions/columns/input/column


ALTER TABLE agent_db_app_public.skill_executions 
  DROP COLUMN input RESTRICT;


