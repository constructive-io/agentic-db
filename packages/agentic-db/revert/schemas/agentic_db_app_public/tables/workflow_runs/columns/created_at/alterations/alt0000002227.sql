-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/columns/created_at/alterations/alt0000002227




ALTER TABLE "agentic_db_app_public".workflow_runs 
    ALTER COLUMN created_at DROP DEFAULT;



