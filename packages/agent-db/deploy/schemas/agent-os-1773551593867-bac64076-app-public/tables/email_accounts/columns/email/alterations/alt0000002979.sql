-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/columns/email/alterations/alt0000002979
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/columns/email/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/columns/updated_at/alterations/alt0000002978


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".email_accounts 
  ALTER COLUMN email SET NOT NULL;

