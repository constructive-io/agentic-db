-- Revert: schemas/agent_db_app_public/tables/skill_executions/columns/completed_at/column


ALTER TABLE "agent_db_app_public".skill_executions 
  DROP COLUMN completed_at RESTRICT;


