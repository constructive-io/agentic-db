-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/require_csrf_for_auth/alterations/alt0000002356
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/require_csrf_for_auth/column


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  ALTER COLUMN require_csrf_for_auth SET NOT NULL;

