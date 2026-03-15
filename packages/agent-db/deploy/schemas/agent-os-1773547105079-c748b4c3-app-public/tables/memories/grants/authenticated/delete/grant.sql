-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/trigger_concept/column


GRANT DELETE ON "agent-os-1773547105079-c748b4c3-app-public".memories TO authenticated;

