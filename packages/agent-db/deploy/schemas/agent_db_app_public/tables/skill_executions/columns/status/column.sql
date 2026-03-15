-- Deploy: schemas/agent_db_app_public/tables/skill_executions/columns/status/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/session_id/column


ALTER TABLE "agent_db_app_public".skill_executions 
  ADD COLUMN status text;

