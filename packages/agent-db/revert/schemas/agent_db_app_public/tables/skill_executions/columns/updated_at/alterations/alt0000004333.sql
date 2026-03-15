-- Revert: schemas/agent_db_app_public/tables/skill_executions/columns/updated_at/alterations/alt0000004333




ALTER TABLE "agent_db_app_public".skill_executions 
    ALTER COLUMN updated_at DROP DEFAULT;



