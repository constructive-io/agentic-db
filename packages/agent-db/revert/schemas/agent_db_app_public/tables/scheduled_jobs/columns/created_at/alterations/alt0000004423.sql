-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/created_at/alterations/alt0000004423




ALTER TABLE "agent_db_app_public".scheduled_jobs 
    ALTER COLUMN created_at DROP DEFAULT;



