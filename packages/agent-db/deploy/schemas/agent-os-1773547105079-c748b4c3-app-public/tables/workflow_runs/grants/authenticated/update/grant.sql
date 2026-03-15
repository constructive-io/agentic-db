-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/timeout_ms/column


GRANT UPDATE ON "agent-os-1773547105079-c748b4c3-app-public".workflow_runs TO authenticated;

