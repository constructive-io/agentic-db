-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/assigned_agent_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/task_type/alterations/alt0000001051


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tasks 
  ADD COLUMN assigned_agent_id uuid;

