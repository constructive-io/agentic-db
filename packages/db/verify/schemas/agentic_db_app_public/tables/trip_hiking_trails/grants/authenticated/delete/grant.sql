-- Verify: schemas/agentic_db_app_public/tables/trip_hiking_trails/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.trip_hiking_trails', 'delete', 'authenticated');


