-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/default_credential_duration/alterations/alt0000000663
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/default_credential_duration/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-auth-private".app_auth_settings.default_credential_duration IS 'Default expiration for bearer token credentials';

