-- Revert: schemas/agentic_db_app_public/tables/runtime_config/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".runtime_config FROM authenticated;


