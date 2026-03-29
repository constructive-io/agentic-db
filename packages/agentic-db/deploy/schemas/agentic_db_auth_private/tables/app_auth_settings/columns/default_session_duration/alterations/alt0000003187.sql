-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_session_duration/alterations/alt0000003187
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_session_duration/column



ALTER TABLE agentic_db_auth_private.app_auth_settings 
    ALTER COLUMN default_session_duration SET DEFAULT '2 weeks'::interval;

