-- Verify: schemas/agentic_db_app_public/tables/workflow_runs/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.workflow_runs', 'delete', 'authenticated');


