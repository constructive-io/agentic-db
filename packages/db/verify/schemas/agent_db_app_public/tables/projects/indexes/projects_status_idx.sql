-- Verify: schemas/agent_db_app_public/tables/projects/indexes/projects_status_idx


SELECT verify_index('agent_db_app_public.projects', 'projects_status_idx');


