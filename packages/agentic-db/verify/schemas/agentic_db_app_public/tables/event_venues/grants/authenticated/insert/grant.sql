-- Verify: schemas/agentic_db_app_public/tables/event_venues/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.event_venues', 'insert', 'authenticated');


