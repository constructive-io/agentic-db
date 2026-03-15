-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_accounts 
  ADD COLUMN updated_at timestamptz;

