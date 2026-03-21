-- Revert: schemas/agentic_db_app_public/tables/event_notes/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.event_notes FROM authenticated;


