-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/allow_anonymous_sessions/alterations/alt0000002229
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/allow_anonymous_sessions/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings 
    ALTER COLUMN allow_anonymous_sessions SET DEFAULT true;

