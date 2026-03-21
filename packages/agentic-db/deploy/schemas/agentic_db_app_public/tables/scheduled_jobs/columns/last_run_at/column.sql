-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/last_run_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/delete_after_run/alterations/alt0000004175


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  ADD COLUMN last_run_at timestamptz;

