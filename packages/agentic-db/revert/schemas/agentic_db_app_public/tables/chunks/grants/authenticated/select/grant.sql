-- Revert: schemas/agentic_db_app_public/tables/chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.chunks FROM authenticated;


