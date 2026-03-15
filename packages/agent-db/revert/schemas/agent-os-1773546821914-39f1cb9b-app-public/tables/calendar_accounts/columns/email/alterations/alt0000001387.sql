-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/columns/email/alterations/alt0000001387


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_accounts 
  ALTER COLUMN email DROP NOT NULL;


