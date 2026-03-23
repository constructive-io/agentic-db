-- Verify: schemas/agentic_db_app_public/tables/trips_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.trips_chunks', 'select', 'authenticated');


