-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.prompt_chunks FROM authenticated;


