-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/allow_anonymous_sessions/alterations/alt0000000668




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".app_auth_settings 
    ALTER COLUMN allow_anonymous_sessions DROP DEFAULT;



