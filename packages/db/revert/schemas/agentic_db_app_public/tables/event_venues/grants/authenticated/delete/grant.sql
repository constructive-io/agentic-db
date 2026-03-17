-- Revert: schemas/agentic_db_app_public/tables/event_venues/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".event_venues FROM authenticated;


