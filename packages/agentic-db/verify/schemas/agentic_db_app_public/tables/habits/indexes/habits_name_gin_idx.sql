-- Verify: schemas/agentic_db_app_public/tables/habits/indexes/habits_name_gin_idx


SELECT verify_index('agentic_db_app_public.habits', 'habits_name_gin_idx');


