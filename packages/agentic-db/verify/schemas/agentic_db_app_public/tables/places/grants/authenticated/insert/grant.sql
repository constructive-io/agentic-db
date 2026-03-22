-- Verify: schemas/agentic_db_app_public/tables/places/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.places', 'insert', 'authenticated');


