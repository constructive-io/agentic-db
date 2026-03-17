-- Verify: schemas/agentic_db_app_public/tables/workflow_runs/indexes/workflow_runs_workflow_id_idx


SELECT verify_index('agentic_db_app_public.workflow_runs', 'workflow_runs_workflow_id_idx');


