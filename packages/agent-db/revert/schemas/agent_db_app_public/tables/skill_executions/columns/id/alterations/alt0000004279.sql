-- Revert: schemas/agent_db_app_public/tables/skill_executions/columns/id/alterations/alt0000004279


ALTER TABLE "agent_db_app_public".skill_executions 
  ALTER COLUMN id DROP NOT NULL;


