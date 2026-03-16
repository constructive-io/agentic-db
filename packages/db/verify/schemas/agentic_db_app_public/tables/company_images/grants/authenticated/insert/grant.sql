-- Verify: schemas/agentic_db_app_public/tables/company_images/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.company_images', 'insert', 'authenticated');


