-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/run_count/alterations/alt0000001213
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/run_count/column
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/next_run_at/column



ALTER TABLE agent_db_app_public.scheduled_jobs 
    ALTER COLUMN run_count SET DEFAULT 0;

