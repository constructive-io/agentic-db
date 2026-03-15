-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/entity_id/alterations/alt0000001131
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/entity_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agents 
  ALTER COLUMN entity_id SET NOT NULL;

