-- Verify: schemas/agentic_db_app_public/tables/venue_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.venue_chunks', 'update', 'authenticated');


