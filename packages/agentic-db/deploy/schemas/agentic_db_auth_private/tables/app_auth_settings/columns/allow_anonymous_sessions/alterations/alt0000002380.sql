-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/allow_anonymous_sessions/alterations/alt0000002380
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/allow_anonymous_sessions/column



ALTER TABLE agentic_db_auth_private.app_auth_settings 
    ALTER COLUMN allow_anonymous_sessions SET DEFAULT true;

