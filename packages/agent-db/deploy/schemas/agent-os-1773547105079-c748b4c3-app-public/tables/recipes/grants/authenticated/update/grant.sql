-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/source_entity_type/column


GRANT UPDATE ON "agent-os-1773547105079-c748b4c3-app-public".recipes TO authenticated;

