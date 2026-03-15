-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/default_credential_duration/alterations/alt0000002222
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/default_credential_duration/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings 
  ALTER COLUMN default_credential_duration SET NOT NULL;

