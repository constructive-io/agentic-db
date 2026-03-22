-- Verify: schemas/agentic_db_app_public/tables/company_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.company_chunks', 'delete', 'authenticated');


