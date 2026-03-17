-- Revert: schemas/agentic_db_app_public/tables/user_settings/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".user_settings FROM authenticated;


