-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_credential_duration/alterations/alt0000001985
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_credential_duration/column



ALTER TABLE agentic_db_auth_private.app_auth_settings 
    ALTER COLUMN default_credential_duration SET DEFAULT '1 hour'::interval;

