-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/lockout_duration/alterations/alt0000002237


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings 
  ALTER COLUMN lockout_duration DROP NOT NULL;


