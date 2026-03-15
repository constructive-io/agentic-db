-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/allow_multiple_sessions/alterations/alt0000002232




ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings 
    ALTER COLUMN allow_multiple_sessions DROP DEFAULT;



