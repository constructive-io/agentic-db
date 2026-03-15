-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/columns/embedding/column


GRANT UPDATE ON "agent-os-1773547105079-c748b4c3-app-public".contacts TO authenticated;

