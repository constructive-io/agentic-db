-- Deploy: schemas/agent_db_app_public/tables/activity_log/alterations/alt0000004460
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/embedding/column


ALTER TABLE "agent_db_app_public".activity_log 
  DISABLE ROW LEVEL SECURITY;

