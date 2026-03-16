-- Verify: schemas/agent_db_app_public/tables/execution_log/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.execution_log', 'update', 'authenticated');


