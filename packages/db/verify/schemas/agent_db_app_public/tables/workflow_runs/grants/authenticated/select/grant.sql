-- Verify: schemas/agent_db_app_public/tables/workflow_runs/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.workflow_runs', 'select', 'authenticated');


