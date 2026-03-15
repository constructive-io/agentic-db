-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/email_accounts/columns/created_at/alterations/alt0000002927


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".email_accounts 
  ALTER COLUMN created_at DROP NOT NULL;


