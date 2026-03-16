-- Verify: schemas/agent_db_app_public/tables/goals/indexes/goals_tags_gin_idx


SELECT verify_index('agent_db_app_public.goals', 'goals_tags_gin_idx');


