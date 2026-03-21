-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_auth_private.app_auth_settings FROM authenticated;


