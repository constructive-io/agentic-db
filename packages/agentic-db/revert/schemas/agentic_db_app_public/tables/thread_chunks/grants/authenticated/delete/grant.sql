-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".thread_chunks FROM authenticated;


