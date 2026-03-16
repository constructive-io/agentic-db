-- Verify: schemas/agent_db_app_public/tables/habits/indexes/habits_tags_gin_idx


SELECT verify_index('agent_db_app_public.habits', 'habits_tags_gin_idx');


