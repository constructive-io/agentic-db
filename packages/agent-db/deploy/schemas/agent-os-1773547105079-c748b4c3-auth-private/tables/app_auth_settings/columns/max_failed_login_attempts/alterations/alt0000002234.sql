-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/max_failed_login_attempts/alterations/alt0000002234
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/max_failed_login_attempts/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings 
  ALTER COLUMN max_failed_login_attempts SET NOT NULL;

