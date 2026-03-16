-- Revert: schemas/agent_db_app_public/tables/skill_executions/columns/created_at/alterations/alt0000001955


ALTER TABLE "agent_db_app_public".skill_executions 
  ALTER COLUMN created_at DROP NOT NULL;


