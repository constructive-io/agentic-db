-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/columns/created_at/alterations/alt0000002944


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_accounts 
  ALTER COLUMN created_at DROP NOT NULL;


