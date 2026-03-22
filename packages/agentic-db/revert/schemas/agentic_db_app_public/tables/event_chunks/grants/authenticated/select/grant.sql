-- Revert: schemas/agentic_db_app_public/tables/event_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.event_chunks FROM authenticated;


