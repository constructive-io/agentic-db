-- Verify: schemas/agent_db_app_public/tables/skills/indexes/skills_active_count_idx


SELECT verify_index('agent_db_app_public.skills', 'skills_active_count_idx');


