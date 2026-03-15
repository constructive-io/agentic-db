-- Revert: schemas/agent_db_app_public/tables/workflow_runs/columns/updated_at/alterations/alt0000004470




ALTER TABLE "agent_db_app_public".workflow_runs 
    ALTER COLUMN updated_at DROP DEFAULT;



