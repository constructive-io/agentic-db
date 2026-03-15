-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_tools/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_tools/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


GRANT DELETE ON "agent-os-1773547105079-c748b4c3-app-public".agent_tools TO authenticated;

