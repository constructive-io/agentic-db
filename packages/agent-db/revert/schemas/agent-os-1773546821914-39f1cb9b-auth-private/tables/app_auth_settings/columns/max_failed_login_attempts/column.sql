-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/max_failed_login_attempts/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings 
  DROP COLUMN max_failed_login_attempts RESTRICT;


