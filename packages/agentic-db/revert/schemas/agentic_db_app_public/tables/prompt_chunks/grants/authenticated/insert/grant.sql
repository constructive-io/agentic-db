-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.prompt_chunks FROM authenticated;


