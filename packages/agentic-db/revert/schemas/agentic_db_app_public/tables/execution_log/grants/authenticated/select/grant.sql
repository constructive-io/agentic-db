-- Revert: schemas/agentic_db_app_public/tables/execution_log/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.execution_log FROM authenticated;


