-- Verify: schemas/agentic_db_app_public/tables/venues_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.venues_chunks', 'select', 'authenticated');


