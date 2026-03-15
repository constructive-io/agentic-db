-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/require_csrf_for_auth/alterations/alt0000002261


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
  ALTER COLUMN require_csrf_for_auth DROP NOT NULL;


