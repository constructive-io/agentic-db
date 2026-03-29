-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.rules_chunks FROM authenticated;


