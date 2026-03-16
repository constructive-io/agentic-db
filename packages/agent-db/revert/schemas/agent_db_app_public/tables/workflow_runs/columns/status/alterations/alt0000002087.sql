-- Revert: schemas/agent_db_app_public/tables/workflow_runs/columns/status/alterations/alt0000002087




ALTER TABLE "agent_db_app_public".workflow_runs 
    ALTER COLUMN status DROP DEFAULT;



