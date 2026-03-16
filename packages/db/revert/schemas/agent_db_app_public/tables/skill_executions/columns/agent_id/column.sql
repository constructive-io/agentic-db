-- Revert: schemas/agent_db_app_public/tables/skill_executions/columns/agent_id/column


ALTER TABLE "agent_db_app_public".skill_executions 
  DROP COLUMN agent_id RESTRICT;


