-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/constraints/workflow_steps_workflow_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
  ADD CONSTRAINT workflow_runs_workflow_id_fkey 
    FOREIGN KEY(workflow_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".workflows (id) 
    ON DELETE CASCADE;

