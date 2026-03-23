-- Verify: schemas/agentic_db_app_public/tables/places/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.places', 'update', 'authenticated');


