-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.runtime_metrics FROM authenticated;


