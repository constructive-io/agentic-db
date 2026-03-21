-- Verify: schemas/agentic_db_app_public/tables/contact_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.contact_chunks', 'delete', 'authenticated');


