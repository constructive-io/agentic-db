-- Deploy: schemas/agent_db_app_public/tables/skill_executions/columns/agent_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/skill_id/alterations/alt0000004334


ALTER TABLE "agent_db_app_public".skill_executions 
  ADD COLUMN agent_id uuid;

