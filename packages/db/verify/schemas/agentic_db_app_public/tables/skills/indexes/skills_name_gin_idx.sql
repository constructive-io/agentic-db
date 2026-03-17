-- Verify: schemas/agentic_db_app_public/tables/skills/indexes/skills_name_gin_idx


SELECT verify_index('agentic_db_app_public.skills', 'skills_name_gin_idx');


