-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/default_fingerprint_mode/alterations/alt0000002226
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/default_fingerprint_mode/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings 
    ALTER COLUMN default_fingerprint_mode SET DEFAULT 'lax';

