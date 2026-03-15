-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/created_at/alterations/alt0000002294


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
  ALTER COLUMN created_at DROP DEFAULT;


