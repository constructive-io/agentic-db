-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_credential_duration/alterations/alt0000002366
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_credential_duration/column



ALTER TABLE "agent_db_auth_private".app_auth_settings 
    ALTER COLUMN default_credential_duration SET DEFAULT '1 hour'::interval;

