-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/embedding/column


GRANT SELECT ON "agent-os-1773547105079-c748b4c3-app-public".expenses TO authenticated;

