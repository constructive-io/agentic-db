-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/alterations/alt0000002210
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/table


COMMENT ON TABLE "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings IS E'Singleton configuration table for authentication settings including session durations, lockout policy, and password requirements';

