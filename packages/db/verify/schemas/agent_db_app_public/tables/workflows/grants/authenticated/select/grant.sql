-- Verify: schemas/agent_db_app_public/tables/workflows/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.workflows', 'select', 'authenticated');


