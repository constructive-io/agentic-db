-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/require_csrf_for_auth/alterations/alt0000000652


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings 
  ALTER COLUMN require_csrf_for_auth DROP NOT NULL;


