-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/require_csrf_for_auth/column


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  DROP COLUMN require_csrf_for_auth RESTRICT;


