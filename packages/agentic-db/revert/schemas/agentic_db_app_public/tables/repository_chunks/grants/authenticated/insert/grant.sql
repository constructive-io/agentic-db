-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.repository_chunks FROM authenticated;


