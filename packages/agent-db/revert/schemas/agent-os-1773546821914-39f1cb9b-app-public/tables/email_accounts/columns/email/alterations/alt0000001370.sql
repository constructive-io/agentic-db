-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/email/alterations/alt0000001370


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".email_accounts 
  ALTER COLUMN email DROP NOT NULL;


