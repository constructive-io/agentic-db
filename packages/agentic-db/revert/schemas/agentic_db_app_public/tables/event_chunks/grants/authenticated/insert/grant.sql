-- Revert: schemas/agentic_db_app_public/tables/event_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".event_chunks FROM authenticated;


