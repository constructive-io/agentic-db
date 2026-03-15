-- Deploy: schemas/agent_db_app_public/tables/feedback/alterations/alt0000004336
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/error/column


ALTER TABLE "agent_db_app_public".feedback 
  DISABLE ROW LEVEL SECURITY;

