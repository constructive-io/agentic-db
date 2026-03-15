-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/updated_at/alterations/alt0000000686


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings 
  ALTER COLUMN updated_at DROP DEFAULT;


