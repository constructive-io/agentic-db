-- Verify: schemas/agent_db_app_public/tables/workflows/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.workflows', 'delete', 'authenticated');


