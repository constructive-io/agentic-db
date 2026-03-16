-- Verify: schemas/agent_db_app_public/tables/workflow_runs/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.workflow_runs', 'update', 'authenticated');


