-- Deploy: schemas/agent_db_app_public/tables/sessions/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/embedding/column


ALTER TABLE "agent_db_app_public".sessions 
  ENABLE ROW LEVEL SECURITY;

