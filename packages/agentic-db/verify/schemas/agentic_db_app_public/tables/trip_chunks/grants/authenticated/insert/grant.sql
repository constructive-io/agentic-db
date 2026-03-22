-- Verify: schemas/agentic_db_app_public/tables/trip_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.trip_chunks', 'insert', 'authenticated');


