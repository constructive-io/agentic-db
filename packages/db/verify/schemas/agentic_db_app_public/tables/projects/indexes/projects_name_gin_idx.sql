-- Verify: schemas/agentic_db_app_public/tables/projects/indexes/projects_name_gin_idx


SELECT verify_index('agentic_db_app_public.projects', 'projects_name_gin_idx');


