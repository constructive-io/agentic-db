-- Verify: schemas/agentic_db_app_public/tables/tasks_chunks/indexes/tasks_chunks_created_at_idx


SELECT verify_index('agentic_db_app_public.tasks_chunks', 'tasks_chunks_created_at_idx');


