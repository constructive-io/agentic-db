-- Verify: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_tags_gin_idx


SELECT verify_index('agentic_db_app_public.habit_logs', 'habit_logs_tags_gin_idx');


