-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.prompts_chunks FROM authenticated;


