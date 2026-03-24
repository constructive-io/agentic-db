-- Revert: schemas/agentic_db_app_public/tables/events/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.events FROM authenticated;


