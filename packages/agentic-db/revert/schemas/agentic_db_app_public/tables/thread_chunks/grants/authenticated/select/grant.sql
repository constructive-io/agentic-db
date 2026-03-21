-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".thread_chunks FROM authenticated;


