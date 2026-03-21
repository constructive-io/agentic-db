-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/id/alterations/alt0000002178
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/processes/columns/logs_path/column


ALTER TABLE "agentic_db_app_public".scheduled_jobs 
  ALTER COLUMN id SET NOT NULL;

