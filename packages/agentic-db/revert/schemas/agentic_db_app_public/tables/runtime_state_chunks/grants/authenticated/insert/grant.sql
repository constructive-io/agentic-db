-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".runtime_state_chunks FROM authenticated;


