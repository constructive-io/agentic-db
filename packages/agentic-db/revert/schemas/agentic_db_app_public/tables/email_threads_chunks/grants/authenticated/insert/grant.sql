-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".email_threads_chunks FROM authenticated;


