-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/created_at/alterations/alt0000003903


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  ALTER COLUMN created_at DROP DEFAULT;


