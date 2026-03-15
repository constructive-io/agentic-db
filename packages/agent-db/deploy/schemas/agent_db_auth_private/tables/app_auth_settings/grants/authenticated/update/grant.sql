-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table


GRANT UPDATE ON agent_db_auth_private.app_auth_settings TO authenticated;

