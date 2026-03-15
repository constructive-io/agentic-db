-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/command/alterations/alt0000001210
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/run_at/column
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/command/column


ALTER TABLE agent_db_app_public.scheduled_jobs 
  ALTER COLUMN command SET NOT NULL;

