-- Verify: schemas/agent_db_app_public/tables/habit_logs/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.habit_logs', 'insert', 'authenticated');


