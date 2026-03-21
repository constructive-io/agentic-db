-- Revert: schemas/agentic_db_app_public/tables/event_notes/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.event_notes FROM authenticated;


