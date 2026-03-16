-- Verify: schemas/agentic_db_app_public/tables/habits/indexes/habits_tags_gin_idx


SELECT verify_index('agentic_db_app_public.habits', 'habits_tags_gin_idx');


