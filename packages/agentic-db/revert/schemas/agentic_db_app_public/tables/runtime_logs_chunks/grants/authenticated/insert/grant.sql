-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.runtime_logs_chunks FROM authenticated;


