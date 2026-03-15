-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".app_auth_settings 
  ENABLE ROW LEVEL SECURITY;

