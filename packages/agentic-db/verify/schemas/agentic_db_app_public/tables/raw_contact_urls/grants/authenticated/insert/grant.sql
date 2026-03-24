-- Verify: schemas/agentic_db_app_public/tables/raw_contact_urls/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.raw_contact_urls', 'insert', 'authenticated');


