-- Verify: schemas/agentic_db_app_public/tables/contact_events/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.contact_events', 'insert', 'authenticated');


