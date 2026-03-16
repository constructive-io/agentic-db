-- Deploy: schemas/agent_db_app_public/tables/lists/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/tags/column


ALTER TABLE "agent_db_app_public".lists 
  ENABLE ROW LEVEL SECURITY;

