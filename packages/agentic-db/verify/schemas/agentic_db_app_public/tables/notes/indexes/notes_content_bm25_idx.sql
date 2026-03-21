-- Verify: schemas/agentic_db_app_public/tables/notes/indexes/notes_content_bm25_idx


SELECT verify_index('agentic_db_app_public.notes', 'notes_content_bm25_idx');


