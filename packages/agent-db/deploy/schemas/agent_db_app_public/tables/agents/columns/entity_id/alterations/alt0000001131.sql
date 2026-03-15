-- Deploy: schemas/agent_db_app_public/tables/agents/columns/entity_id/alterations/alt0000001131
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE agent_db_app_public.agents 
  ALTER COLUMN entity_id SET NOT NULL;

