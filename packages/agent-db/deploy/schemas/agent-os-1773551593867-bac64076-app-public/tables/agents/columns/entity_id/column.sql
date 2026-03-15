-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agents 
  ADD COLUMN entity_id uuid;

