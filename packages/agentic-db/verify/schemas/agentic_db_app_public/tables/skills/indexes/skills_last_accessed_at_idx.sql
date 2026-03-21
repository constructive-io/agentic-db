-- Verify: schemas/agentic_db_app_public/tables/skills/indexes/skills_last_accessed_at_idx


SELECT verify_index('agentic_db_app_public.skills', 'skills_last_accessed_at_idx');


