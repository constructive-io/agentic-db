-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table


GRANT SELECT ON "agent_db_auth_private".app_auth_settings TO authenticated;

