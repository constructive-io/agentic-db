-- Verify: schemas/agentic_db_app_public/tables/venues_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.venues_chunks', 'update', 'authenticated');


