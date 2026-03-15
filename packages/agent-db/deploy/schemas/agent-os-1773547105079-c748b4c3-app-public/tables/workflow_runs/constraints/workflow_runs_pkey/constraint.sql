-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/constraints/workflow_runs_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
  ADD CONSTRAINT workflow_runs_pkey PRIMARY KEY (id);

