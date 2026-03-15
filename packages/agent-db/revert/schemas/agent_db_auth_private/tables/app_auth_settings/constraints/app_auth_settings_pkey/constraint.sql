-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/constraints/app_auth_settings_pkey/constraint


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  DROP CONSTRAINT app_auth_settings_pkey;


