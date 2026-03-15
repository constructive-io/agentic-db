-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/error/column


GRANT DELETE ON "agent-os-1773547105079-c748b4c3-app-public".agent_spawns TO authenticated;

