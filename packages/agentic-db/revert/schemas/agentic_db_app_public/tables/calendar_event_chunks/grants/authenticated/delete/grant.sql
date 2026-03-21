-- Revert: schemas/agentic_db_app_public/tables/calendar_event_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".calendar_event_chunks FROM authenticated;


