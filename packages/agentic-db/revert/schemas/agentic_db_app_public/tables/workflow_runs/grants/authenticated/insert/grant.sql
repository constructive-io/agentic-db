-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.workflow_runs FROM authenticated;


