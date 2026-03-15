-- Deploy: schemas/agent_db_app_public/tables/rules/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/embedding/column


ALTER TABLE "agent_db_app_public".rules 
  ENABLE ROW LEVEL SECURITY;

