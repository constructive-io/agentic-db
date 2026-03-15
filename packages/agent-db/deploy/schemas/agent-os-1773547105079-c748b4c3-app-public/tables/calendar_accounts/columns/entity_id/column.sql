-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_accounts 
  ADD COLUMN entity_id uuid;

