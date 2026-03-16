-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/delete_after_run/alterations/alt0000001193




ALTER TABLE "agentic_db_app_public".scheduled_jobs 
    ALTER COLUMN delete_after_run DROP DEFAULT;



