-- Revert: schemas/agentic_db_app_public/tables/session_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".session_chunks FROM authenticated;


