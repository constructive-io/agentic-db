-- Revert: schemas/agentic_db_app_public/tables/prompts/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.prompts FROM authenticated;


