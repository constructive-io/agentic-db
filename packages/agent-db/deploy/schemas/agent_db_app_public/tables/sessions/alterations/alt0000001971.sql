-- Deploy: schemas/agent_db_app_public/tables/sessions/alterations/alt0000001971
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/embedding/column


ALTER TABLE "agent_db_app_public".sessions 
  DISABLE ROW LEVEL SECURITY;

