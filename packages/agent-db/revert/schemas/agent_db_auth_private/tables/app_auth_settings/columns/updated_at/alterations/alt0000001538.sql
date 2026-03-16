-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/updated_at/alterations/alt0000001538


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  ALTER COLUMN updated_at DROP DEFAULT;


