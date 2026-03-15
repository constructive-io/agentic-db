-- Deploy: schemas/agent_db_app_public/tables/tools/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agent_db_app_public".tools 
  ENABLE ROW LEVEL SECURITY;

