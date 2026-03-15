-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/email_accounts/columns/sync_state/column


GRANT UPDATE ON "agent-os-1773547105079-c748b4c3-app-public".messages TO authenticated;

