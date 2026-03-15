-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/min_password_length/alterations/alt0000002242
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/min_password_length/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings.min_password_length IS 'Minimum number of characters required for user passwords';

