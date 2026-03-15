-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/allow_anonymous_sessions/alterations/alt0000002277




ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
    ALTER COLUMN allow_anonymous_sessions DROP DEFAULT;



