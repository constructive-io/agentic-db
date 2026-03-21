-- Revert: schemas/agentic_db_app_public/tables/session_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".session_chunks FROM authenticated;


