-- Deploy: schemas/agent_db_app_public/tables/skill_executions/columns/input/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/duration_ms/column


ALTER TABLE "agent_db_app_public".skill_executions 
  ADD COLUMN input jsonb;

