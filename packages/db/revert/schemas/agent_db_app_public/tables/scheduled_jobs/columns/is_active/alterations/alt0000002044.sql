-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/is_active/alterations/alt0000002044




ALTER TABLE "agent_db_app_public".scheduled_jobs 
    ALTER COLUMN is_active DROP DEFAULT;



