-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/timeout_ms/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/on_failure_step/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_steps 
  ADD COLUMN timeout_ms int;

