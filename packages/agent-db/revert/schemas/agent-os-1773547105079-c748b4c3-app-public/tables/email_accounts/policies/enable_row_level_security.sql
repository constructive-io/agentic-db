-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/email_accounts/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".email_accounts 
  DISABLE ROW LEVEL SECURITY;


