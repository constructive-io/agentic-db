-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.repository_chunks FROM authenticated;


