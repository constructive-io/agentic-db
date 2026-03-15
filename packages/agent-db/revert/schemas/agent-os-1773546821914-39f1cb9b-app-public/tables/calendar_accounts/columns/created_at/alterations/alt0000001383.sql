-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/columns/created_at/alterations/alt0000001383


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_accounts 
  ALTER COLUMN created_at DROP NOT NULL;


