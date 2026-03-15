-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/status/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/workflow_id/alterations/alt0000002814


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
  ADD COLUMN status text;

