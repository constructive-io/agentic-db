-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/constraints/workflow_steps_workflow_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/constraints/scheduled_jobs_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_steps 
  ADD CONSTRAINT workflow_steps_workflow_id_fkey 
    FOREIGN KEY(workflow_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-app-public".workflows (id) 
    ON DELETE CASCADE;

