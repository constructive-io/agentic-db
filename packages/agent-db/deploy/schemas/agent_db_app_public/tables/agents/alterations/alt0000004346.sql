-- Deploy: schemas/agent_db_app_public/tables/agents/alterations/alt0000004346
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE "agent_db_app_public".agents 
  DISABLE ROW LEVEL SECURITY;

