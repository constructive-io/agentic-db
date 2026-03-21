-- Revert: schemas/agentic_db_app_public/tables/events/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.events FROM authenticated;


