-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/lockout_duration/alterations/alt0000000677
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/lockout_duration/column



ALTER TABLE agent_db_auth_private.app_auth_settings 
    ALTER COLUMN lockout_duration SET DEFAULT '15 minutes'::interval;

