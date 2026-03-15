-- Revert: schemas/agent_db_app_public/tables/tasks/columns/task_type/alterations/alt0000004221




ALTER TABLE "agent_db_app_public".tasks 
    ALTER COLUMN task_type DROP DEFAULT;



