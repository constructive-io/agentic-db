-- Revert: schemas/agent_db_app_public/tables/skill_executions/columns/created_at/alterations/alt0000004283




ALTER TABLE "agent_db_app_public".skill_executions 
    ALTER COLUMN created_at DROP DEFAULT;



