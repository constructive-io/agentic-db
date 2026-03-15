-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/columns/duration_ms/column


GRANT UPDATE ON "agent-os-1773547105079-c748b4c3-app-public".chats TO authenticated;

