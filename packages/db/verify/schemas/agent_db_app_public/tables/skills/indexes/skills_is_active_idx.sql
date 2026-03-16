-- Verify: schemas/agent_db_app_public/tables/skills/indexes/skills_is_active_idx


SELECT verify_index('agent_db_app_public.skills', 'skills_is_active_idx');


