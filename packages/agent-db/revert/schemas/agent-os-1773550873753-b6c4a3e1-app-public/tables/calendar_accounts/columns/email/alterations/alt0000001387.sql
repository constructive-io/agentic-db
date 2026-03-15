-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_accounts/columns/email/alterations/alt0000001387


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_accounts 
  ALTER COLUMN email DROP NOT NULL;


