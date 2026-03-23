-- Verify: schemas/agentic_db_app_public/tables/companies_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.companies_chunks', 'update', 'authenticated');


