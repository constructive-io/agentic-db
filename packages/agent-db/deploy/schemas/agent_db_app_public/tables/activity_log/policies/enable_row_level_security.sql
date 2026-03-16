-- Deploy: schemas/agent_db_app_public/tables/activity_log/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/embedding/column


ALTER TABLE "agent_db_app_public".activity_log 
  ENABLE ROW LEVEL SECURITY;

