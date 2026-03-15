-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/embedding/column


GRANT SELECT ON "agent-os-1773547105079-c748b4c3-app-public".skills TO authenticated;

