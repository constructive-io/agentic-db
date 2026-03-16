-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_fingerprint_mode/alterations/alt0000001518
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_fingerprint_mode/column


COMMENT ON COLUMN "agent_db_auth_private".app_auth_settings.default_fingerprint_mode IS E'Default fingerprint validation mode for new sessions: strict, lax, or none';

