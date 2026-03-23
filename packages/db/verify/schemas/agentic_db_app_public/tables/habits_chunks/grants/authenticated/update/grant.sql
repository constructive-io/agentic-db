-- Verify: schemas/agentic_db_app_public/tables/habits_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.habits_chunks', 'update', 'authenticated');


