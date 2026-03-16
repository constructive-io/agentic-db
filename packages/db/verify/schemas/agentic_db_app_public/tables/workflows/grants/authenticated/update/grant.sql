-- Verify: schemas/agentic_db_app_public/tables/workflows/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.workflows', 'update', 'authenticated');


