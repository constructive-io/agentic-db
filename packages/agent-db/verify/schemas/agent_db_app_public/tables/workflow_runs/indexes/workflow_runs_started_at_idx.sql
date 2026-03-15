-- Verify: schemas/agent_db_app_public/tables/workflow_runs/indexes/workflow_runs_started_at_idx


SELECT verify_index('agent_db_app_public.workflow_runs', 'workflow_runs_started_at_idx');


