-- Verify: schemas/agentic_db_app_public/tables/place_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.place_chunks', 'insert', 'authenticated');


