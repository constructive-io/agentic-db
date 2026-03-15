-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/email_accounts/columns/email/alterations/alt0000001370


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".email_accounts 
  ALTER COLUMN email DROP NOT NULL;


