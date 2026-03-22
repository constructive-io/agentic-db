-- Verify: schemas/agentic_db_app_public/tables/contact_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.contact_chunks', 'insert', 'authenticated');


