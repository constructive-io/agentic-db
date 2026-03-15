-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/updated_at/alterations/alt0000002295


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
  ALTER COLUMN updated_at DROP DEFAULT;


