-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/columns/updated_at/alterations/alt0000002229




ALTER TABLE "agentic_db_app_public".workflow_runs 
    ALTER COLUMN updated_at DROP DEFAULT;



