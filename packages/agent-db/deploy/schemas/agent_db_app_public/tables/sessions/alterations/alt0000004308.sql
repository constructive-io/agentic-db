-- Deploy: schemas/agent_db_app_public/tables/sessions/alterations/alt0000004308
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/embedding/column


ALTER TABLE "agent_db_app_public".sessions 
  DISABLE ROW LEVEL SECURITY;

