-- Revert: schemas/agent_db_app_public/tables/workflow_runs/columns/created_at/alterations/alt0000004468




ALTER TABLE "agent_db_app_public".workflow_runs 
    ALTER COLUMN created_at DROP DEFAULT;



