-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/default_fingerprint_mode/alterations/alt0000002227
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/default_fingerprint_mode/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings.default_fingerprint_mode IS E'Default fingerprint validation mode for new sessions: strict, lax, or none';

