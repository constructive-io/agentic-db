-- Deploy: schemas/agent_db_app_public/tables/tools/alterations/alt0000004432
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agent_db_app_public".tools 
  DISABLE ROW LEVEL SECURITY;

