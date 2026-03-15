-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/id/alterations/alt0000002808
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/timeout_ms/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

