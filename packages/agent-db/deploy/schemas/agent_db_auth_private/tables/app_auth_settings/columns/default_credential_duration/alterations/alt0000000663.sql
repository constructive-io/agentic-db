-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_credential_duration/alterations/alt0000000663
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_credential_duration/column


COMMENT ON COLUMN agent_db_auth_private.app_auth_settings.default_credential_duration IS 'Default expiration for bearer token credentials';

