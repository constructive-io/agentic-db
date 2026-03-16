-- Verify: schemas/agentic_db_app_public/tables/projects/indexes/projects_search_tsv_gin_idx


SELECT verify_index('agentic_db_app_public.projects', 'projects_search_tsv_gin_idx');


