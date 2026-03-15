-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/policies/enable_row_level_security


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".app_auth_settings 
  DISABLE ROW LEVEL SECURITY;


