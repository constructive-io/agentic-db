-- Verify: schemas/agentic_db_app_public/tables/places_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.places_chunks', 'insert', 'authenticated');


