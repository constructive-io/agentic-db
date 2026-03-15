-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/tags/column


GRANT SELECT ON "agent-os-1773547105079-c748b4c3-app-public".documents TO authenticated;

