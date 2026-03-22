-- Revert: schemas/agentic_db_app_public/tables/tags/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.tags FROM authenticated;


