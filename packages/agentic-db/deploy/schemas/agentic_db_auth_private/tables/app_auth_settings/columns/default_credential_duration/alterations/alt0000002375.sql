-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_credential_duration/alterations/alt0000002375
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_credential_duration/column


COMMENT ON COLUMN agentic_db_auth_private.app_auth_settings.default_credential_duration IS 'Default expiration for bearer token credentials';

