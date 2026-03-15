-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/columns/email/alterations/alt0000002979


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".email_accounts 
  ALTER COLUMN email DROP NOT NULL;


