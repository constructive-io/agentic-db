-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".user_settings 
  DISABLE ROW LEVEL SECURITY;


