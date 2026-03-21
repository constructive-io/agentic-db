-- Verify: schemas/agentic_db_app_public/tables/habit_logs/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.habit_logs', 'select', 'authenticated');


