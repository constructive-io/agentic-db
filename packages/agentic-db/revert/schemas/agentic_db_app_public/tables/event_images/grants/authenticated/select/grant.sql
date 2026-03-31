-- Revert: schemas/agentic_db_app_public/tables/event_images/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.event_images FROM authenticated;


