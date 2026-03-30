-- Revert: schemas/agentic_db_app_public/tables/event_venues/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".event_venues FROM authenticated;


