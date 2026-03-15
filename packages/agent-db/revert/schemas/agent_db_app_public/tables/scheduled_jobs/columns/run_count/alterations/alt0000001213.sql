-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/run_count/alterations/alt0000001213




ALTER TABLE agent_db_app_public.scheduled_jobs 
    ALTER COLUMN run_count DROP DEFAULT;



