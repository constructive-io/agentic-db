-- Revert: schemas/agentic_db_app_public/tables/events_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".events_chunks FROM authenticated;


