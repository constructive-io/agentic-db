-- Revert: schemas/agent_db_app_public/tables/skill_executions/columns/skill_id/column


ALTER TABLE "agent_db_app_public".skill_executions 
  DROP COLUMN skill_id RESTRICT;


