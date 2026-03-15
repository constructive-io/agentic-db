-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/columns/id/alterations/alt0000002942
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/columns/embedding/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_accounts 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

