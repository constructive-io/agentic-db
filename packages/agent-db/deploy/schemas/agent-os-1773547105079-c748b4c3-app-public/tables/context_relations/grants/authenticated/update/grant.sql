-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/columns/completed_at/column


GRANT UPDATE ON "agent-os-1773547105079-c748b4c3-app-public".context_relations TO authenticated;

