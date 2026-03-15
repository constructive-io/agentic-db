-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/indexes/app_auth_settings_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/updated_at/column


CREATE INDEX app_auth_settings_updated_at_idx ON "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings ( updated_at );

