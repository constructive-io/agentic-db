-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/lockout_duration/alterations/alt0000003894


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  ALTER COLUMN lockout_duration DROP NOT NULL;


