-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_session_duration/alterations/alt0000000656
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_session_duration/column



ALTER TABLE agent_db_auth_private.app_auth_settings 
    ALTER COLUMN default_session_duration SET DEFAULT '2 weeks'::interval;

