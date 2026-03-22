-- Verify: schemas/agentic_db_app_public/tables/habit_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.habit_chunks', 'insert', 'authenticated');


