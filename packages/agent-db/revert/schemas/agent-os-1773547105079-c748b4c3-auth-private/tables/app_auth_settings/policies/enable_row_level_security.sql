-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings 
  DISABLE ROW LEVEL SECURITY;


