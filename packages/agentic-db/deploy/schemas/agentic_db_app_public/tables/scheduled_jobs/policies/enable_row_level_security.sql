-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/logs_path/column


ALTER TABLE "agentic_db_app_public".scheduled_jobs 
  ENABLE ROW LEVEL SECURITY;

