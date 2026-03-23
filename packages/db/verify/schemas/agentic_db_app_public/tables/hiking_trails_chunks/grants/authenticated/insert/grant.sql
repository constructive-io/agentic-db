-- Verify: schemas/agentic_db_app_public/tables/hiking_trails_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.hiking_trails_chunks', 'insert', 'authenticated');


