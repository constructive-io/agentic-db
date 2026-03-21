-- Revert: schemas/agentic_db_app_public/tables/prompts/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.prompts FROM authenticated;


