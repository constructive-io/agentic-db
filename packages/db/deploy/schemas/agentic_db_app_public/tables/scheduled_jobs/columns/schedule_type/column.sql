-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/schedule_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/name/alterations/alt0000001189


ALTER TABLE "agentic_db_app_public".scheduled_jobs 
  ADD COLUMN schedule_type text;

