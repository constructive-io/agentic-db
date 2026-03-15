-- Deploy: schemas/agent_db_app_public/tables/memories/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/embedding/column


ALTER TABLE "agent_db_app_public".memories 
  ENABLE ROW LEVEL SECURITY;

