-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/columns/email/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/columns/updated_at/alterations/alt0000002995


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_accounts 
  ADD COLUMN email text;

