-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/embedding/column


GRANT SELECT ON "agent-os-1773547105079-c748b4c3-app-public".processes TO authenticated;

