-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table


GRANT SELECT ON "agentic_db_auth_private".app_auth_settings TO authenticated;

