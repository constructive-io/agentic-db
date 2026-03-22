-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".runtime_state_chunks FROM authenticated;


