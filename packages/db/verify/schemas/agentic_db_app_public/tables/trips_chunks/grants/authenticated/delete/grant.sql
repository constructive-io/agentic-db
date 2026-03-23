-- Verify: schemas/agentic_db_app_public/tables/trips_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.trips_chunks', 'delete', 'authenticated');


