-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/email_accounts/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/constraints/chunks_repository_id_fkey/constraint


GRANT UPDATE ON "agent-os-1773547105079-c748b4c3-app-public".email_accounts TO authenticated;

