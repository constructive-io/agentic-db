-- Revert: schemas/agentic_db_app_public/tables/thread_participants/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".thread_participants FROM authenticated;


