-- Revert: schemas/agent_db_app_public/tables/tasks/columns/approval_status/alterations/alt0000002934




ALTER TABLE "agent_db_app_public".tasks 
    ALTER COLUMN approval_status DROP DEFAULT;



