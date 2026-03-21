-- Revert: schemas/agentic_db_app_public/tables/threads/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.threads FROM authenticated;


