-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/updated_at/alterations/alt0000004377




ALTER TABLE "agent_db_app_public".scheduled_jobs 
    ALTER COLUMN updated_at DROP DEFAULT;



