-- Verify: schemas/agentic_db_app_public/tables/events/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.events', 'insert', 'authenticated');


