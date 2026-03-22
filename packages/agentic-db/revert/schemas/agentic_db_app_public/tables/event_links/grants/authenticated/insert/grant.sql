-- Revert: schemas/agentic_db_app_public/tables/event_links/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.event_links FROM authenticated;


