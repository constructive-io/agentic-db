-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.prompt_chunks FROM authenticated;


