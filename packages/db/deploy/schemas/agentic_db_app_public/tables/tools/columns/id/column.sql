-- Deploy: schemas/agentic_db_app_public/tables/tools/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agentic_db_app_public".tools 
  ADD COLUMN id uuid;

