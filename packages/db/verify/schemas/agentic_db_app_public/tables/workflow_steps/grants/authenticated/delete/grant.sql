-- Verify: schemas/agentic_db_app_public/tables/workflow_steps/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.workflow_steps', 'delete', 'authenticated');


