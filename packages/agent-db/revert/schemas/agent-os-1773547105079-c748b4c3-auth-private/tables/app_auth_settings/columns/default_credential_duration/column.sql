-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/default_credential_duration/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings 
  DROP COLUMN default_credential_duration RESTRICT;


