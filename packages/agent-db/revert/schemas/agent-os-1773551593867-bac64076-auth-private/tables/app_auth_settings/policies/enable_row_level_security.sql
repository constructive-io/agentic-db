-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/policies/enable_row_level_security


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
  DISABLE ROW LEVEL SECURITY;


