-- Deploy: schemas/agentic_db_app_public/tables/tools/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agentic_db_app_public".tools 
  ENABLE ROW LEVEL SECURITY;

