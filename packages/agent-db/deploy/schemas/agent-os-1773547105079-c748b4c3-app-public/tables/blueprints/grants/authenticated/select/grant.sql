-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/embedding/column


GRANT SELECT ON "agent-os-1773547105079-c748b4c3-app-public".blueprints TO authenticated;

