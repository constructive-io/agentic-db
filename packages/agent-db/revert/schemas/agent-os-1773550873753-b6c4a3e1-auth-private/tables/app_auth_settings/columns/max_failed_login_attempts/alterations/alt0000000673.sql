-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/max_failed_login_attempts/alterations/alt0000000673


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".app_auth_settings 
  ALTER COLUMN max_failed_login_attempts DROP NOT NULL;


