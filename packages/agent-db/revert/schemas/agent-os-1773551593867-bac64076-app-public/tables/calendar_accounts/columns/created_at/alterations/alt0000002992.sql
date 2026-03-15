-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/columns/created_at/alterations/alt0000002992


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_accounts 
  ALTER COLUMN created_at DROP NOT NULL;


