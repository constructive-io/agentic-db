-- Verify: schemas/agentic_db_app_public/tables/notes/indexes/notes_tags_gin_idx


SELECT verify_index('agentic_db_app_public.notes', 'notes_tags_gin_idx');


