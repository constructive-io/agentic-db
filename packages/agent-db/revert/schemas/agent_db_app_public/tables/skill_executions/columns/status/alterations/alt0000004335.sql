-- Revert: schemas/agent_db_app_public/tables/skill_executions/columns/status/alterations/alt0000004335




ALTER TABLE "agent_db_app_public".skill_executions 
    ALTER COLUMN status DROP DEFAULT;



