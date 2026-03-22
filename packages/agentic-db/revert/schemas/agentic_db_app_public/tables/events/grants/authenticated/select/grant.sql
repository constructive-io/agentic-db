-- Revert: schemas/agentic_db_app_public/tables/events/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.events FROM authenticated;


