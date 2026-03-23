-- Verify: schemas/agentic_db_app_public/tables/trips_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.trips_chunks', 'insert', 'authenticated');


