-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/entity_id/alterations/alt0000001131
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/entity_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agents 
  ALTER COLUMN entity_id SET NOT NULL;

