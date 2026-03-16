-- Revert: schemas/agent_db_app_public/tables/user_settings/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".user_settings FROM authenticated;


