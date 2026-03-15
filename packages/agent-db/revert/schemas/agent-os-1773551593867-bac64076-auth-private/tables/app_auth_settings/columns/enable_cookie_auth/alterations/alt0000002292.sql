-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/enable_cookie_auth/alterations/alt0000002292




ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
    ALTER COLUMN enable_cookie_auth DROP DEFAULT;



