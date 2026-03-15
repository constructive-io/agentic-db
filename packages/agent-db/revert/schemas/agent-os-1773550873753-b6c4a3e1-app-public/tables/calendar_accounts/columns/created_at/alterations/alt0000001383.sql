-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_accounts/columns/created_at/alterations/alt0000001383


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_accounts 
  ALTER COLUMN created_at DROP NOT NULL;


