-- Verify: schemas/agentic_db_app_public/tables/habits_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.habits_chunks', 'insert', 'authenticated');


