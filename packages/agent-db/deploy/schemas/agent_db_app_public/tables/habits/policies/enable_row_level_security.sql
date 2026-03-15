-- Deploy: schemas/agent_db_app_public/tables/habits/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/embedding/column


ALTER TABLE "agent_db_app_public".habits 
  ENABLE ROW LEVEL SECURITY;

