-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/embedding/column


GRANT SELECT ON "agent-os-1773547105079-c748b4c3-app-public".events TO authenticated;

