-- Revert: schemas/agentic_db_app_public/tables/event_venues/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".event_venues FROM authenticated;


