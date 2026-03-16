-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/run_count/alterations/alt0000001194




ALTER TABLE "agentic_db_app_public".scheduled_jobs 
    ALTER COLUMN run_count DROP DEFAULT;



