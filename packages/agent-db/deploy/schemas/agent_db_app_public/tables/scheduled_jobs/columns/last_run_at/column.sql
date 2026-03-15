-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/last_run_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/delete_after_run/alterations/alt0000001212


ALTER TABLE agent_db_app_public.scheduled_jobs 
  ADD COLUMN last_run_at timestamptz;

