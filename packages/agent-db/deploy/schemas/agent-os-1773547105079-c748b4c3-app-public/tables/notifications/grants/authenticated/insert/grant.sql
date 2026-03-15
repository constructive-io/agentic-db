-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/ref_type/column


GRANT INSERT ON "agent-os-1773547105079-c748b4c3-app-public".notifications TO authenticated;

