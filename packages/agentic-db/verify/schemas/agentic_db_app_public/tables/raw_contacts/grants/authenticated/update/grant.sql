-- Verify: schemas/agentic_db_app_public/tables/raw_contacts/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.raw_contacts', 'update', 'authenticated');


