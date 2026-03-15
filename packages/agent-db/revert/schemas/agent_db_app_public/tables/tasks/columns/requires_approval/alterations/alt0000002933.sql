-- Revert: schemas/agent_db_app_public/tables/tasks/columns/requires_approval/alterations/alt0000002933




ALTER TABLE "agent_db_app_public".tasks 
    ALTER COLUMN requires_approval DROP DEFAULT;



