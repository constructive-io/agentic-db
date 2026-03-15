-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/columns/updated_at/alterations/alt0000002947
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/columns/updated_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_accounts 
    ALTER COLUMN updated_at SET DEFAULT now();

