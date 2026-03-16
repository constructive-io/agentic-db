-- Verify: schemas/agentic_db_app_public/tables/contacts/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.contacts', 'update', 'authenticated');


