-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/require_csrf_for_auth/alterations/alt0000002214




ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings 
    ALTER COLUMN require_csrf_for_auth DROP DEFAULT;



