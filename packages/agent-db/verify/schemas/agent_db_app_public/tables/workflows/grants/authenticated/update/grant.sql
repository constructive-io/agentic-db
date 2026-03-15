-- Verify: schemas/agent_db_app_public/tables/workflows/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.workflows', 'update', 'authenticated');


