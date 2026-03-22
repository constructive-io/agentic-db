-- Verify: schemas/agentic_db_app_public/tables/event_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.event_chunks', 'insert', 'authenticated');


