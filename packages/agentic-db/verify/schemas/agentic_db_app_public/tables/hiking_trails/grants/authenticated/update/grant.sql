-- Verify: schemas/agentic_db_app_public/tables/hiking_trails/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.hiking_trails', 'update', 'authenticated');


