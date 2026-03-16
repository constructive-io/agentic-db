-- Verify: schemas/agent_db_app_public/tables/habit_logs/indexes/habit_logs_calories_idx


SELECT verify_index('agent_db_app_public.habit_logs', 'habit_logs_calories_idx');


