-- Verify: schemas/agent_db_app_public/tables/projects/indexes/projects_due_date_idx


SELECT verify_index('agent_db_app_public.projects', 'projects_due_date_idx');


