-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/columns/email/alterations/alt0000002948


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_accounts 
  ALTER COLUMN email DROP NOT NULL;


