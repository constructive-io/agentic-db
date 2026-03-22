-- Revert: schemas/agentic_db_app_public/tables/interactions/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.interactions FROM authenticated;


