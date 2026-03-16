-- Verify: schemas/agent_db_app_public/tables/notes/indexes/notes_last_accessed_at_idx


SELECT verify_index('agent_db_app_public.notes', 'notes_last_accessed_at_idx');


