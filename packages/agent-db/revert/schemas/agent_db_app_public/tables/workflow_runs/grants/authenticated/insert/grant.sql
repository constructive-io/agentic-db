-- Revert: schemas/agent_db_app_public/tables/workflow_runs/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.workflow_runs FROM authenticated;


