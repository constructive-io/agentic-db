-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/on_failure_step/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/on_success_step/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
  ADD COLUMN on_failure_step int;

