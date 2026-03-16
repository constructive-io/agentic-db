-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/command/alterations/alt0000001191
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/run_at/column
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/command/column


ALTER TABLE "agentic_db_app_public".scheduled_jobs 
  ALTER COLUMN command SET NOT NULL;

