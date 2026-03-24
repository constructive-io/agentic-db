-- Revert: schemas/agentic_db_app_public/tables/runtime_state_dependencies/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.runtime_state_dependencies FROM authenticated;


