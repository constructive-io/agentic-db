-- Verify: schemas/agentic_db_app_public/tables/contacts/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.contacts', 'delete', 'authenticated');


