-- Verify: schemas/agentic_db_app_public/tables/companies/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.companies', 'insert', 'authenticated');


