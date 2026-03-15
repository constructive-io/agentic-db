-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_accounts/columns/email/alterations/alt0000001387
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_accounts/columns/email/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_accounts/columns/updated_at/alterations/alt0000001386


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_accounts 
  ALTER COLUMN email SET NOT NULL;

