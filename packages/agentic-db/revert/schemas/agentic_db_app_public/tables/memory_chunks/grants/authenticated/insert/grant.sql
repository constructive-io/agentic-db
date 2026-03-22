-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.memory_chunks FROM authenticated;


