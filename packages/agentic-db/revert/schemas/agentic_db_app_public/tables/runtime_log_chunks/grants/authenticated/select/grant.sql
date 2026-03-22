-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.runtime_log_chunks FROM authenticated;


