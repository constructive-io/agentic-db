-- Verify: schemas/agentic_db_app_public/tables/places_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.places_chunks', 'select', 'authenticated');


