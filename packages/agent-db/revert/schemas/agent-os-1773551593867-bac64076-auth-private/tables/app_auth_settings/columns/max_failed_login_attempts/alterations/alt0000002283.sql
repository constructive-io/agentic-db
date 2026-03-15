-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/max_failed_login_attempts/alterations/alt0000002283




ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
    ALTER COLUMN max_failed_login_attempts DROP DEFAULT;



