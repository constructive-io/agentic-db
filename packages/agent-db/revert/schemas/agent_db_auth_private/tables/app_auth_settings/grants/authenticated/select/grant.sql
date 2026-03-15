-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_auth_private.app_auth_settings FROM authenticated;


