-- Revert: schemas/agentic_db_app_public/tables/memories/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.memories FROM authenticated;


