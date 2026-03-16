-- Verify: schemas/agent_db_app_public/tables/skills/indexes/skills_last_accessed_at_idx


SELECT verify_index('agent_db_app_public.skills', 'skills_last_accessed_at_idx');


