-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.interactions_chunks FROM authenticated;


