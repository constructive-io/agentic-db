-- Deploy: schemas/agent_db_app_public/tables/skill_executions/columns/started_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/status/alterations/alt0000001960


ALTER TABLE "agent_db_app_public".skill_executions 
  ADD COLUMN started_at timestamptz;

