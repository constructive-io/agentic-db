-- Verify: schemas/agentic_db_app_public/tables/workflows/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.workflows', 'insert', 'authenticated');


