-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agents 
  ADD COLUMN entity_id uuid;

