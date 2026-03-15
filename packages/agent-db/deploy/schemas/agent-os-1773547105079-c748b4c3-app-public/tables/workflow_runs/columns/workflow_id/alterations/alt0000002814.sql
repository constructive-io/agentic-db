-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/workflow_id/alterations/alt0000002814
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/workflow_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/updated_at/alterations/alt0000002813


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
  ALTER COLUMN workflow_id SET NOT NULL;

