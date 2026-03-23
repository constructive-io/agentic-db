-- Verify: schemas/agentic_db_app_public/tables/companies_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.companies_chunks', 'insert', 'authenticated');


