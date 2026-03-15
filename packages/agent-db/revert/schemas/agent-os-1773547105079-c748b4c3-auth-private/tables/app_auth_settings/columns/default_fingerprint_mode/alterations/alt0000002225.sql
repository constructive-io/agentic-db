-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/default_fingerprint_mode/alterations/alt0000002225


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings 
  ALTER COLUMN default_fingerprint_mode DROP NOT NULL;


