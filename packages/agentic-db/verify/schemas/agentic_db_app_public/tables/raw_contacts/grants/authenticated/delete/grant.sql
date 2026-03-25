-- Verify: schemas/agentic_db_app_public/tables/raw_contacts/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.raw_contacts', 'delete', 'authenticated');


