-- Verify: schemas/agentic_db_app_public/tables/execution_log/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.execution_log', 'delete', 'authenticated');


