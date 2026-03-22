-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.memory_chunks FROM authenticated;


