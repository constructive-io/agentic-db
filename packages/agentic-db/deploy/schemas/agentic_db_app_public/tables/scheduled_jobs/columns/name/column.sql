-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/updated_at/alterations/alt0000004170


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  ADD COLUMN name text;

