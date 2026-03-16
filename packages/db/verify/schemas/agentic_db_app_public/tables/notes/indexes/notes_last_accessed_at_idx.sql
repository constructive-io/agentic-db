-- Verify: schemas/agentic_db_app_public/tables/notes/indexes/notes_last_accessed_at_idx


SELECT verify_index('agentic_db_app_public.notes', 'notes_last_accessed_at_idx');


