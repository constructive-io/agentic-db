-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/columns/provider/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_accounts 
  DROP COLUMN provider RESTRICT;


