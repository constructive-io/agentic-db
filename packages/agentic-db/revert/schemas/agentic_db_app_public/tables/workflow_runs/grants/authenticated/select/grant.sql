-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.workflow_runs FROM authenticated;


