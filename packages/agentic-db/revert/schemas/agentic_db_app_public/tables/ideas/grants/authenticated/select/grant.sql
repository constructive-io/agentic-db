-- Revert: schemas/agentic_db_app_public/tables/ideas/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.ideas FROM authenticated;


