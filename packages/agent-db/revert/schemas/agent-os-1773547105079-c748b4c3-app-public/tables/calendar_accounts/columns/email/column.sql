-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/columns/email/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_accounts 
  DROP COLUMN email RESTRICT;


