-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/allow_anonymous_sessions/alterations/alt0000000668




ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings 
    ALTER COLUMN allow_anonymous_sessions DROP DEFAULT;



