-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/lockout_duration/alterations/alt0000000677




ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings 
    ALTER COLUMN lockout_duration DROP DEFAULT;



