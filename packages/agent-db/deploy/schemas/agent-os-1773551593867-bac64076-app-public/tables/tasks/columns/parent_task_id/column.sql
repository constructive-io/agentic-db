-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/parent_task_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/assigned_agent_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  ADD COLUMN parent_task_id uuid;

