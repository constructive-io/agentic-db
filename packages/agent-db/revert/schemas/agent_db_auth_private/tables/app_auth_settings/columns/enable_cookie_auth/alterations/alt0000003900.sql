-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/enable_cookie_auth/alterations/alt0000003900


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  ALTER COLUMN enable_cookie_auth DROP NOT NULL;


