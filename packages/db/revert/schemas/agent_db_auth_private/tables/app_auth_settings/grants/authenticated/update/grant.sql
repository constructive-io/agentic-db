-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_auth_private".app_auth_settings FROM authenticated;


