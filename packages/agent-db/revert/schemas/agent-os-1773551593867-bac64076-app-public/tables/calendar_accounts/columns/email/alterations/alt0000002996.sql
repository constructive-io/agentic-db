-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/columns/email/alterations/alt0000002996


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_accounts 
  ALTER COLUMN email DROP NOT NULL;


