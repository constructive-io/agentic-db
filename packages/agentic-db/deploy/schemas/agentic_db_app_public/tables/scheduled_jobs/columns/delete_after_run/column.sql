-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/delete_after_run/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/is_active/alterations/alt0000004174


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  ADD COLUMN delete_after_run bool;

