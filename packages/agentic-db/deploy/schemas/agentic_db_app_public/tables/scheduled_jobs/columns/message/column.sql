-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/message/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/command/alterations/alt0000004173


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  ADD COLUMN message text;

