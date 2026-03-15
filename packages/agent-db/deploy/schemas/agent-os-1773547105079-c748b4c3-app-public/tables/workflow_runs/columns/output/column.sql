-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/output/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/input/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
  ADD COLUMN output jsonb;

