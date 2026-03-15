-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/alterations/alt0000004452
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/tags/column


ALTER TABLE "agent_db_app_public".workflow_steps 
  DISABLE ROW LEVEL SECURITY;

