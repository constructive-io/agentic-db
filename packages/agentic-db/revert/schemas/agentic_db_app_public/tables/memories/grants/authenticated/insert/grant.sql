-- Revert: schemas/agentic_db_app_public/tables/memories/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.memories FROM authenticated;


