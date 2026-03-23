-- Verify: schemas/agentic_db_app_public/tables/companies_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.companies_chunks', 'delete', 'authenticated');


