-- Revert: schemas/agent_db_app_public/tables/workflow_runs/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.workflow_runs FROM authenticated;


