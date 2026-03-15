-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/enable_cookie_auth/alterations/alt0000003901
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/enable_cookie_auth/column



ALTER TABLE "agent_db_auth_private".app_auth_settings 
    ALTER COLUMN enable_cookie_auth SET DEFAULT false;

