-- Verify: schemas/agentic_db_app_public/tables/contact_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.contact_chunks', 'update', 'authenticated');


