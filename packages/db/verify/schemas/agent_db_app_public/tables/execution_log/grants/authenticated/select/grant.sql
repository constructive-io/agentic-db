-- Verify: schemas/agent_db_app_public/tables/execution_log/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.execution_log', 'select', 'authenticated');


