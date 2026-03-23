-- Verify: schemas/agentic_db_app_public/tables/contacts_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.contacts_chunks', 'select', 'authenticated');


