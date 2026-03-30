-- Revert: schemas/agentic_db_app_public/tables/calendar_events/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".calendar_events FROM authenticated;


