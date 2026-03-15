-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/default_fingerprint_mode/alterations/alt0000000666
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/default_fingerprint_mode/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings.default_fingerprint_mode IS E'Default fingerprint validation mode for new sessions: strict, lax, or none';

