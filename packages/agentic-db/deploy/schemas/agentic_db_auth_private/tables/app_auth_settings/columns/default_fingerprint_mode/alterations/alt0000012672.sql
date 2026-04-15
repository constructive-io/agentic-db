-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_fingerprint_mode/alterations/alt0000012672
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_fingerprint_mode/column


COMMENT ON COLUMN agentic_db_auth_private.app_auth_settings.default_fingerprint_mode IS E'Default fingerprint validation mode for new sessions: strict, lax, or none';

