-- Deploy: schemas/agent_db_app_public/tables/agents/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE agent_db_app_public.agents 
  ENABLE ROW LEVEL SECURITY;

