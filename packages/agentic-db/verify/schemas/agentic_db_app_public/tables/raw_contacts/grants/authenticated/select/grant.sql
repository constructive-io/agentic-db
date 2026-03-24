-- Verify: schemas/agentic_db_app_public/tables/raw_contacts/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.raw_contacts', 'select', 'authenticated');


