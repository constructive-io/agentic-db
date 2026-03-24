-- Revert: schemas/agentic_db_app_public/tables/runtime_states/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".runtime_states FROM authenticated;


