-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/remember_me_duration/alterations/alt0000002371
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/remember_me_duration/column



ALTER TABLE agentic_db_auth_private.app_auth_settings 
    ALTER COLUMN remember_me_duration SET DEFAULT '30 days'::interval;

