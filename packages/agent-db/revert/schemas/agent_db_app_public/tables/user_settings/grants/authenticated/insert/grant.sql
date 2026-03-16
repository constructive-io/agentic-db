-- Revert: schemas/agent_db_app_public/tables/user_settings/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".user_settings FROM authenticated;


