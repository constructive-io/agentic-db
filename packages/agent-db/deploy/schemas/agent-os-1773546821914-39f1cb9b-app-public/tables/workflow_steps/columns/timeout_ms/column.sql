-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/timeout_ms/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/on_failure_step/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
  ADD COLUMN timeout_ms int;

