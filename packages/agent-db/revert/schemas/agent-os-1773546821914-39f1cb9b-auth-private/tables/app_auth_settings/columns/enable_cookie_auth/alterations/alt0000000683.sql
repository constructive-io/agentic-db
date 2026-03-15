-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/enable_cookie_auth/alterations/alt0000000683




ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings 
    ALTER COLUMN enable_cookie_auth DROP DEFAULT;



