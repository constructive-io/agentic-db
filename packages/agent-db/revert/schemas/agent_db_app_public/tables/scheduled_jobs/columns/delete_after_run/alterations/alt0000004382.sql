-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/delete_after_run/alterations/alt0000004382




ALTER TABLE "agent_db_app_public".scheduled_jobs 
    ALTER COLUMN delete_after_run DROP DEFAULT;



