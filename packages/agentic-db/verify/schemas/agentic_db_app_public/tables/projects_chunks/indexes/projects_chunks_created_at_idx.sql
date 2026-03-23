-- Verify: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_created_at_idx


SELECT verify_index('agentic_db_app_public.projects_chunks', 'projects_chunks_created_at_idx');


