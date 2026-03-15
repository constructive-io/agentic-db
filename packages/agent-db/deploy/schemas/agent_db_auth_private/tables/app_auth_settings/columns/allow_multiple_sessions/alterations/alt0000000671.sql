-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/allow_multiple_sessions/alterations/alt0000000671
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/allow_multiple_sessions/column



ALTER TABLE agent_db_auth_private.app_auth_settings 
    ALTER COLUMN allow_multiple_sessions SET DEFAULT true;

