-- Revert: schemas/agentic_db_app_public/tables/chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.chunks FROM authenticated;


