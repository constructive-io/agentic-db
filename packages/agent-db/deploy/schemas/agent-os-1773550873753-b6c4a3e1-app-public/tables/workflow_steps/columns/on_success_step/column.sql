-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/on_success_step/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/action_config/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_steps 
  ADD COLUMN on_success_step int;

